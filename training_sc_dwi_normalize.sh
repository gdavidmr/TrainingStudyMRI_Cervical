#!/bin/bash

# ==================== DESCRIPTION OF THE SCRIPT ==========================

# The script performs normalization of spinal cord dMRI dataset to the PAM50 template
# using Spinal Cord Toolbox (SCT) commands. Note that here we assume that the dMRI  images are already segmented.

# Usage of the script:
#  the script requires one input parameter, a text file listing all the subject folders
#  note here that you need to specify only the subject folder, not the subfolders where the dMRI data are located

# ===========================================================================


subjects=$(cat $1)

DIR_NORM_DWI=dmri_cervical/derivatives/normalized

for subject in ${subjects[@]}
do

echo "Processing: $subject"

# remove newline character
subject=$(echo $subject|tr -d '\r')

cd $subject

# ===================== specifications ===========================
# Adjust the following parameters according to your file system!!!

# get mean dw image and structural image
# note that mean dw is recommended due to excellent cord contrast
dwi=$(ls dmri_cervical/derivatives/ECMOCO/sub-*_ses-*_acq-dmri-cervical*_desc-CROP-ECMOCO-mean-b500.nii)

# select SC mask for b0 and megre
dwi_sc=$(ls dmri_cervical/derivatives/label/sub-*_ses-*_acq-dmri-cervical*_desc-CROP-ECMOCO-mean-b500-sc_mask.nii)

# ==================== normalizing dMRI ========================
# first we normalize dwi to the t2s PAM50 template
# the normalization itself consists of multiple steps including labeling vertebrae, creating labels,
# and registration to the template 
# We use a two-label normalization approach by setting labels to the center of the LSE (slice with the greatest SC area, label 19) and the tip of the SC (label 21) from PAM50_labels_disc.nii.gz.
# See https://forum.spinalcordmri.org/t/labels-for-lumbar-spinal-level/737/8?u=valosekj

# create label to the native space
# here, we utilize the fact that the FOV is centered at the C2/C3 disc in the inferior-superior direction 
mkdir -p $DIR_NORM_DWI
sct_label_utils -i $dwi -create-seg-mid 3 -o $DIR_NORM_DWI/labels_disc.nii.gz

# registration to template
# medic -> PAM50
sct_register_to_template -i $dwi \
	-s $dwi_sc \
	-ldisc $DIR_NORM_DWI/labels_disc.nii.gz \
	-c t1 \
	-ref template \
	-ofolder $DIR_NORM_DWI \
	-param step=1,type=seg,algo=centermass,metric=MeanSquares,slicewise=1,smooth=3:step=2,type=seg,algo=bsplinesyn,metric=MeanSquares,slicewise=1,iter=10:step=3,type=im,algo=bsplinesyn,metric=MeanSquares,slicewise=1,iter=10
		
# rename warping fields for clarity
dwi_base=$(basename -- "$dwi")
dwi_base=${dwi_base:0:-4}
mv $DIR_NORM_DWI/warp_template2anat.nii.gz $DIR_NORM_DWI/warp_template2dmri.nii.gz
mv $DIR_NORM_DWI/warp_anat2template.nii.gz $DIR_NORM_DWI/warp_dmri2template.nii.gz

# warp template objects to dMRI (backtransformation is output as well)
sct_warp_template -d $dwi \
 -w $DIR_NORM_DWI/warp_template2dmri.nii.gz \
 -a 1 \
 -s 1 \
 -ofolder $DIR_NORM_DWI

# after obtaining both trafos, we apply the forward trafo (dmri->template) on all DTI maps
FA=$(ls dmri_cervical/derivatives/DTI-ROB/*FA_map.nii)
base=`basename $FA -FA_map.nii`
sct_apply_transfo -i $FA \
 -d $SCT_DIR/data/PAM50/template/PAM50_t1.nii.gz \
 -w $DIR_NORM_DWI/warp_dmri2template.nii.gz \
 -o $DIR_NORM_DWI/"$base"-norm-FA_map.nii

MD=$(ls dmri_cervical/derivatives/DTI-ROB/*MD_map.nii)
base=`basename $MD -MD_map.nii`
sct_apply_transfo -i $MD \
 -d $SCT_DIR/data/PAM50/template/PAM50_t1.nii.gz \
 -w $DIR_NORM_DWI/warp_dmri2template.nii.gz \
 -o $DIR_NORM_DWI/"$base"-norm-MD_map.nii

AD=$(ls dmri_cervical/derivatives/DTI-ROB/*AD_map.nii)
base=`basename $AD -AD_map.nii`
sct_apply_transfo -i $AD \
 -d $SCT_DIR/data/PAM50/template/PAM50_t1.nii.gz \
 -w $DIR_NORM_DWI/warp_dmri2template.nii.gz \
 -o $DIR_NORM_DWI/"$base"-norm-AD_map.nii

RD=$(ls dmri_cervical/derivatives/DTI-ROB/*RD_map.nii)
base=`basename $RD -RD_map.nii`
sct_apply_transfo -i $RD \
 -d $SCT_DIR/data/PAM50/template/PAM50_t1.nii.gz \
 -w $DIR_NORM_DWI/warp_dmri2template.nii.gz \
 -o $DIR_NORM_DWI/"$base"-norm-RD_map.nii

done

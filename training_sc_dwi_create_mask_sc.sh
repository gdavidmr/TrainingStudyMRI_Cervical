#!/bin/bash

# ----------------------------------------
# Create cylindric mask around the spinal cord

# Created by G.David, July 2019
# ----------------------------------------

# =================== Set variables ===================
# specify subject

subjects=$(cat $1)
 
for subject in ${subjects[@]}
do

# remove newline character
subject=$(echo $subject|tr -d '\r')

echo "Processing: $subject"

path_in=$subject/dmri_cervical/derivatives/ECMOCO
path_out=$subject/dmri_cervical/derivatives/label

cd $path_in

# create output folder
if [[ ! -e $path_out ]]; then
	mkdir $path_out
fi

# specify image to segment (mean diffusion-weighted (b=500) image)
dwi=$(find $path_in -name sub-*_ses-*_acq-dmri-cervical_desc-CROP-ECMOCO-mean-b500.nii)
dwi_base=$(basename -s .nii $dwi)

# specify centerline file
centerline=$(find $path_out -name sub-*_ses-*_acq-dmri-cervical_desc-CROP-mean-centerline.nii.gz)

# create spinal cord mask
sct_deepseg_sc \
    -i "$dwi" \
    -c dwi \
    -file_centerline $centerline \
    -o $path_out/$dwi_base-sc_mask.nii

# make sure the output file type is correct
sct_maths -i $path_out/$dwi_base-sc_mask.nii -mul 1 -type uint8 -o $path_out/$dwi_base-sc_mask.nii

done

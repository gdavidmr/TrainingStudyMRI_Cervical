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

path_in=$subject/dmri_cervical/derivatives/CROP
path_out=$subject/dmri_cervical/derivatives/label

cd $path_in

# select dwi, b0 BLIPUP, and b0 REF
dwi=$(ls sub-*_ses-*_acq-dmri-cervical_desc-CROP_dwi.nii | sed -n 1p)
dwi_base=$(basename -s .nii $dwi)

# create output folder
if [[ ! -e $path_out ]]; then
	mkdir $path_out
fi

# create cylindric mask around the spinal cord
sct_maths -i "$dwi" -mean t -o $path_out/"${dwi_base::-4}"-mean.nii
cd $path_out

sct_get_centerline -i "${dwi_base::-4}"-mean.nii -c t2s -method viewer

mv "${dwi_base::-4}"-mean_centerline.csv "${dwi_base::-4}"-mean-centerline.csv
mv "${dwi_base::-4}"-mean_centerline.nii.gz "${dwi_base::-4}"-mean-centerline.nii.gz

sct_create_mask -i "${dwi_base::-4}"-mean.nii  -p centerline,"${dwi_base::-4}"-mean-centerline.nii.gz -size 20mm -f cylinder -o "${dwi_base::-4}"-mean-cylinder_mask.nii

# make sure the output file type is correct
sct_maths -i "${dwi_base::-4}"-mean-cylinder_mask.nii -mul 1 -type uint8 -o "${dwi_base::-4}"-mean-cylinder_mask.nii

done

#!/bin/bash

# ==================== DESCRIPTION OF THE SCRIPT ==========================
# The scripts extracts metrics (FA, MD, AD, RD).
# Note: DTI data have to be normalized before running this script.
# 		So, first run LCstudy_SCT_normalize_dmri.sh
# =========================================================================


subjects=$(cat $1)

for subject in ${subjects[@]}
do

echo "Processing: $subject"

# remove newline character
subject=$(echo $subject|tr -d '\r')

cd $subject

#IMPORTANT! Range goes from 0 to 14!
zmin=5
zmax=9

FA=$(ls $subject/dmri_cervical/derivatives/DTI-ROB/*FA_map.nii)
sct_extract_metric -i $FA \
	-f $subject/dmri_cervical/derivatives/normalized/atlas \
	-method wa \
	-z ${zmin}:${zmax} \
	-perslice 0    \
	-discard-neg-val 1 \
	-o $subject/dmri_cervical/derivatives/DTI-ROB/metric_labels_FA_upperhalfFOV.csv
	
	
MD=$(ls $subject/dmri_cervical/derivatives/DTI-ROB/*MD_map.nii)
sct_extract_metric -i $MD \
	-f $subject/dmri_cervical/derivatives/normalized/atlas \
	-method wa \
	-z ${zmin}:${zmax} \
	-perslice 0    \
	-discard-neg-val 1 \
	-o $subject/dmri_cervical/derivatives/DTI-ROB/metric_labels_MD_upperhalfFOV.csv
	

AD=$(ls $subject/dmri_cervical/derivatives/DTI-ROB/*AD_map.nii)
sct_extract_metric -i $AD \
	-f $subject/dmri_cervical/derivatives/normalized/atlas \
	-method wa \
	-z ${zmin}:${zmax} \
	-perslice 0   \
	-discard-neg-val 1 \
	-o $subject/dmri_cervical/derivatives/DTI-ROB/metric_labels_AD_upperhalfFOV.csv
	
	
	
RD=$(ls $subject/dmri_cervical/derivatives/DTI-ROB/*RD_map.nii)
sct_extract_metric -i $RD \
	-f $subject/dmri_cervical/derivatives/normalized/atlas \
	-method wa \
	-z ${zmin}:${zmax} \
	-perslice 0   \
	-discard-neg-val 1 \
	-o $subject/dmri_cervical/derivatives/DTI-ROB/metric_labels_RD_upperhalfFOV.csv
	
done

function training_combine_results_forDTI_atlas()

data = {
     'G:\projects\derivatives\dmri_cervical\CC01\day00';
     'G:\projects\derivatives\dmri_cervical\CC01\day07';
     'G:\projects\derivatives\dmri_cervical\CC01\day14';
     'G:\projects\derivatives\dmri_cervical\CC01\day28';
     'G:\projects\derivatives\dmri_cervical\CC01\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC02\day00';
     'G:\projects\derivatives\dmri_cervical\CC02\day07';
     'G:\projects\derivatives\dmri_cervical\CC02\day14';
     'G:\projects\derivatives\dmri_cervical\CC02\day28';
     'G:\projects\derivatives\dmri_cervical\CC02\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC03\day00';
     'G:\projects\derivatives\dmri_cervical\CC03\day07';
     'G:\projects\derivatives\dmri_cervical\CC03\day14';
     'G:\projects\derivatives\dmri_cervical\CC03\day28';
     'G:\projects\derivatives\dmri_cervical\CC03\day84';
     
%    'G:\projects\derivatives\dmri_cervical\CC04\day00';
     'G:\projects\derivatives\dmri_cervical\CC04\day07';
     'G:\projects\derivatives\dmri_cervical\CC04\day14';
     'G:\projects\derivatives\dmri_cervical\CC04\day28';
     'G:\projects\derivatives\dmri_cervical\CC04\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC05\day00';
     'G:\projects\derivatives\dmri_cervical\CC05\day07';
     'G:\projects\derivatives\dmri_cervical\CC05\day14';
     'G:\projects\derivatives\dmri_cervical\CC05\day28';
     'G:\projects\derivatives\dmri_cervical\CC05\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC06\day00';
     'G:\projects\derivatives\dmri_cervical\CC06\day07';
     'G:\projects\derivatives\dmri_cervical\CC06\day14';
     'G:\projects\derivatives\dmri_cervical\CC06\day28';
     'G:\projects\derivatives\dmri_cervical\CC06\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC07\day07';
     'G:\projects\derivatives\dmri_cervical\CC07\day28';
     'G:\projects\derivatives\dmri_cervical\CC07\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC08\day00';
     'G:\projects\derivatives\dmri_cervical\CC08\day07';
     'G:\projects\derivatives\dmri_cervical\CC08\day14';
     'G:\projects\derivatives\dmri_cervical\CC08\day28';
     'G:\projects\derivatives\dmri_cervical\CC08\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC09\day00';
     'G:\projects\derivatives\dmri_cervical\CC09\day07';
     'G:\projects\derivatives\dmri_cervical\CC09\day14';
     'G:\projects\derivatives\dmri_cervical\CC09\day28';
     'G:\projects\derivatives\dmri_cervical\CC09\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC10\day00';
     'G:\projects\derivatives\dmri_cervical\CC10\day07';
     'G:\projects\derivatives\dmri_cervical\CC10\day14';
     'G:\projects\derivatives\dmri_cervical\CC10\day28';
     'G:\projects\derivatives\dmri_cervical\CC10\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC11\day00';
     'G:\projects\derivatives\dmri_cervical\CC11\day07';
     'G:\projects\derivatives\dmri_cervical\CC11\day14';
     'G:\projects\derivatives\dmri_cervical\CC11\day28';
     'G:\projects\derivatives\dmri_cervical\CC11\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC12\day00';
     'G:\projects\derivatives\dmri_cervical\CC12\day07';
     'G:\projects\derivatives\dmri_cervical\CC12\day14';
     'G:\projects\derivatives\dmri_cervical\CC12\day28';
     'G:\projects\derivatives\dmri_cervical\CC12\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC13\day00';
     'G:\projects\derivatives\dmri_cervical\CC13\day07';
     'G:\projects\derivatives\dmri_cervical\CC13\day14';
     'G:\projects\derivatives\dmri_cervical\CC13\day28';
     'G:\projects\derivatives\dmri_cervical\CC13\day84';
     
     'G:\projects\derivatives\dmri_cervical\CC14\day00';
     'G:\projects\derivatives\dmri_cervical\CC14\day07';
     'G:\projects\derivatives\dmri_cervical\CC14\day14';
     'G:\projects\derivatives\dmri_cervical\CC14\day28';
     'G:\projects\derivatives\dmri_cervical\CC14\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL01\day00';
     'G:\projects\derivatives\dmri_cervical\CL01\day07';
     'G:\projects\derivatives\dmri_cervical\CL01\day14';
     'G:\projects\derivatives\dmri_cervical\CL01\day28';
     'G:\projects\derivatives\dmri_cervical\CL01\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL02\day00';
     'G:\projects\derivatives\dmri_cervical\CL02\day14';
     'G:\projects\derivatives\dmri_cervical\CL02\day28';
     'G:\projects\derivatives\dmri_cervical\CL02\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL03\day00';
     'G:\projects\derivatives\dmri_cervical\CL03\day07';
     'G:\projects\derivatives\dmri_cervical\CL03\day14';
     'G:\projects\derivatives\dmri_cervical\CL03\day28';
     'G:\projects\derivatives\dmri_cervical\CL03\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL04\day00';
     'G:\projects\derivatives\dmri_cervical\CL04\day07';
     'G:\projects\derivatives\dmri_cervical\CL04\day14';
     'G:\projects\derivatives\dmri_cervical\CL04\day28';
     'G:\projects\derivatives\dmri_cervical\CL04\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL06\day00';
     'G:\projects\derivatives\dmri_cervical\CL06\day07';
     'G:\projects\derivatives\dmri_cervical\CL06\day14';
     'G:\projects\derivatives\dmri_cervical\CL06\day28';
     'G:\projects\derivatives\dmri_cervical\CL06\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL07\day00';
     'G:\projects\derivatives\dmri_cervical\CL07\day07';
     'G:\projects\derivatives\dmri_cervical\CL07\day14';
     'G:\projects\derivatives\dmri_cervical\CL07\day28';
     'G:\projects\derivatives\dmri_cervical\CL07\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL08\day00';
     'G:\projects\derivatives\dmri_cervical\CL08\day07';
     'G:\projects\derivatives\dmri_cervical\CL08\day14';
     'G:\projects\derivatives\dmri_cervical\CL08\day28';
     'G:\projects\derivatives\dmri_cervical\CL08\day84';
     
     'G:\projects\derivatives\dmri_cervical\CL10\day00';
     'G:\projects\derivatives\dmri_cervical\CL10\day07';
     'G:\projects\derivatives\dmri_cervical\CL10\day14';
     'G:\projects\derivatives\dmri_cervical\CL10\day28';
     
     'G:\projects\derivatives\dmri_cervical\CL11\day00';
     'G:\projects\derivatives\dmri_cervical\CL11\day07';
     'G:\projects\derivatives\dmri_cervical\CL11\day14';
     'G:\projects\derivatives\dmri_cervical\CL11\day28';
     'G:\projects\derivatives\dmri_cervical\CL11\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU01\day00';
     'G:\projects\derivatives\dmri_cervical\CU01\day07';
     'G:\projects\derivatives\dmri_cervical\CU01\day14';
     'G:\projects\derivatives\dmri_cervical\CU01\day28';
     'G:\projects\derivatives\dmri_cervical\CU01\day84';

     'G:\projects\derivatives\dmri_cervical\CU02\day00';
%    'G:\projects\derivatives\dmri_cervical\CU02\day07';
     'G:\projects\derivatives\dmri_cervical\CU02\day14';
     'G:\projects\derivatives\dmri_cervical\CU02\day28';
     'G:\projects\derivatives\dmri_cervical\CU02\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU03\day00';
     'G:\projects\derivatives\dmri_cervical\CU03\day07';
%    'G:\projects\derivatives\dmri_cervical\CU03\day14';
     'G:\projects\derivatives\dmri_cervical\CU03\day28';
     'G:\projects\derivatives\dmri_cervical\CU03\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU04\day00';
     'G:\projects\derivatives\dmri_cervical\CU04\day07';
     'G:\projects\derivatives\dmri_cervical\CU04\day14';
     'G:\projects\derivatives\dmri_cervical\CU04\day28';
     'G:\projects\derivatives\dmri_cervical\CU04\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU05\day00';
     'G:\projects\derivatives\dmri_cervical\CU05\day07';
     'G:\projects\derivatives\dmri_cervical\CU05\day14';
     'G:\projects\derivatives\dmri_cervical\CU05\day28';
     'G:\projects\derivatives\dmri_cervical\CU05\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU06\day00';
     'G:\projects\derivatives\dmri_cervical\CU06\day07';
     'G:\projects\derivatives\dmri_cervical\CU06\day14';
     'G:\projects\derivatives\dmri_cervical\CU06\day28';
     'G:\projects\derivatives\dmri_cervical\CU06\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU07\day00';
     'G:\projects\derivatives\dmri_cervical\CU07\day07';
     'G:\projects\derivatives\dmri_cervical\CU07\day14';
     'G:\projects\derivatives\dmri_cervical\CU07\day28';
     'G:\projects\derivatives\dmri_cervical\CU07\day84';
    
     'G:\projects\derivatives\dmri_cervical\CU08\day00';
     'G:\projects\derivatives\dmri_cervical\CU08\day07';
     'G:\projects\derivatives\dmri_cervical\CU08\day14';
     'G:\projects\derivatives\dmri_cervical\CU08\day28';
     'G:\projects\derivatives\dmri_cervical\CU08\day84';
     
     'G:\projects\derivatives\dmri_cervical\CU09\day00';
     'G:\projects\derivatives\dmri_cervical\CU09\day07';
     'G:\projects\derivatives\dmri_cervical\CU09\day14';
     'G:\projects\derivatives\dmri_cervical\CU09\day28';
     'G:\projects\derivatives\dmri_cervical\CU09\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL01\day00';
     'G:\projects\derivatives\dmri_cervical\PL01\day07';
     'G:\projects\derivatives\dmri_cervical\PL01\day14';
     'G:\projects\derivatives\dmri_cervical\PL01\day28';
     'G:\projects\derivatives\dmri_cervical\PL01\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL02\day00';
     'G:\projects\derivatives\dmri_cervical\PL02\day07';
     'G:\projects\derivatives\dmri_cervical\PL02\day14';
     'G:\projects\derivatives\dmri_cervical\PL02\day28';
     'G:\projects\derivatives\dmri_cervical\PL02\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL03\day00';
     'G:\projects\derivatives\dmri_cervical\PL03\day07';
     'G:\projects\derivatives\dmri_cervical\PL03\day14';
     'G:\projects\derivatives\dmri_cervical\PL03\day28';
     'G:\projects\derivatives\dmri_cervical\PL03\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL04\day00';
     'G:\projects\derivatives\dmri_cervical\PL04\day07';
     'G:\projects\derivatives\dmri_cervical\PL04\day14';
     'G:\projects\derivatives\dmri_cervical\PL04\day28';
     'G:\projects\derivatives\dmri_cervical\PL04\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL05\day00';
     'G:\projects\derivatives\dmri_cervical\PL05\day07';
     'G:\projects\derivatives\dmri_cervical\PL05\day14';
     'G:\projects\derivatives\dmri_cervical\PL05\day28';
     'G:\projects\derivatives\dmri_cervical\PL05\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL06\day00';
     'G:\projects\derivatives\dmri_cervical\PL06\day07';
     'G:\projects\derivatives\dmri_cervical\PL06\day14';
     'G:\projects\derivatives\dmri_cervical\PL06\day28';
     'G:\projects\derivatives\dmri_cervical\PL06\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL07\day00';
     'G:\projects\derivatives\dmri_cervical\PL07\day07';
     'G:\projects\derivatives\dmri_cervical\PL07\day14';
     'G:\projects\derivatives\dmri_cervical\PL07\day84';
     
     'G:\projects\derivatives\dmri_cervical\PL08\day00';
     'G:\projects\derivatives\dmri_cervical\PL08\day07';
     'G:\projects\derivatives\dmri_cervical\PL08\day14';
     'G:\projects\derivatives\dmri_cervical\PL08\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU01\day00';
     'G:\projects\derivatives\dmri_cervical\PU01\day07';
     'G:\projects\derivatives\dmri_cervical\PU01\day14';
     'G:\projects\derivatives\dmri_cervical\PU01\day28';
     'G:\projects\derivatives\dmri_cervical\PU01\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU02\day00';
     'G:\projects\derivatives\dmri_cervical\PU02\day07';
%    'G:\projects\derivatives\dmri_cervical\PU02\day14';
     'G:\projects\derivatives\dmri_cervical\PU02\day28';
     'G:\projects\derivatives\dmri_cervical\PU02\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU03\day00';
     'G:\projects\derivatives\dmri_cervical\PU03\day07';
     'G:\projects\derivatives\dmri_cervical\PU03\day28';
     'G:\projects\derivatives\dmri_cervical\PU03\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU04\day00';
     'G:\projects\derivatives\dmri_cervical\PU04\day07';
     'G:\projects\derivatives\dmri_cervical\PU04\day14';
     'G:\projects\derivatives\dmri_cervical\PU04\day28';
     
     'G:\projects\derivatives\dmri_cervical\PU05\day00';
     'G:\projects\derivatives\dmri_cervical\PU05\day07';
     'G:\projects\derivatives\dmri_cervical\PU05\day14';
     'G:\projects\derivatives\dmri_cervical\PU05\day28';
     'G:\projects\derivatives\dmri_cervical\PU05\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU07\day00';
     'G:\projects\derivatives\dmri_cervical\PU07\day07';
     'G:\projects\derivatives\dmri_cervical\PU07\day14';
     'G:\projects\derivatives\dmri_cervical\PU07\day28';
     'G:\projects\derivatives\dmri_cervical\PU07\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU08\day00';
     'G:\projects\derivatives\dmri_cervical\PU08\day07';
     'G:\projects\derivatives\dmri_cervical\PU08\day14';
     'G:\projects\derivatives\dmri_cervical\PU08\day28';
     'G:\projects\derivatives\dmri_cervical\PU08\day84';
     
     'G:\projects\derivatives\dmri_cervical\PU09\day00';
     'G:\projects\derivatives\dmri_cervical\PU09\day14';
     'G:\projects\derivatives\dmri_cervical\PU09\day28';
     'G:\projects\derivatives\dmri_cervical\PU09\day84';
};

labels = {
    'WM_left_fasciculus_gracilis';
    'WM_right_fasciculus_gracilis';
    'WM_left_fasciculus_cuneatus';
    'WM_right_fasciculus_cuneatus';
    'WM_left_lateral_corticospinal_tract';
    'WM_right_lateral_corticospinal_tract';
    'WM_left_ventral_spinocerebellar_tract';
    'WM_right_ventral_spinocerebellar_tract';
    'WM_left_rubrospinal_tract';
    'WM_right_rubrospinal_tract';
    'WM_left_lateral_reticulospinal_tract';
    'WM_right_lateral_reticulospinal_tract';
    'WM_left_spinal_lemniscus';
    'WM_right_spinal_lemniscus';
    'WM_left_spino_olivary_tract';
    'WM_right_spino_olivary_tract';                                       
    'WM_left_ventrolateral_reticulospinal_tract';                 
    'WM_right_ventrolateral_reticulospinal_tract';                        
    'WM_left_lateral_vestibulospinal_tract';                       
    'WM_right_lateral_vestibulospinal_tract';                            
    'WM_left_ventral_reticulospinal_tract';                            
    'WM_right_ventral_reticulospinal_tract';                              
    'WM_left_ventral_corticospinal_tract';                             
    'WM_right_ventral_corticospinal_tract';                               
    'WM_left_tectospinal_tract';                              
    'WM_right_tectospinal_tract';                                         
    'WM_left_medial_reticulospinal_tract';                                
    'WM_right_medial_reticulospinal_tract';                               
    'WM_left_medial_longitudinal_fasciculus';                             
    'WM_right_medial_longitudinal_fasciculus';                            
    'GM_left_ventral_horn';                           
    'GM_right_ventral_horn';                                              
    'GM_left_intermediate_zone';                                      
    'GM_right_intermediate_zone';                                         
    'GM_left_dorsal_horn';                                        
    'GM_right_dorsal_horn';                                               
    'CSF_contour';                                             
    'spinal_cord';                                                       
    'white_matter';                                                       
    'gray_matter';                                                      
    'dorsal_columns';                                                     
    'lateral_funiculi';                                                   
    'ventral_funiculi';                                         
    };

% create an empty composite table
labelsall = {};
labelsall = cat(2,labelsall,'subject');
labelsall = cat(2,labelsall,'session');
for j = 1:length(labels)
    labelsall = cat(2,labelsall,['FA_' labels{j} '_WA']);
end 
for j = 1:length(labels)
    labelsall = cat(2,labelsall,['FA_' labels{j} '_STD']);
end
for j = 1:length(labels)
   labelsall = cat(2,labelsall,['FA_' labels{j} '_Size [vox]']);
end
for j = 1:length(labels)
    labelsall = cat(2,labelsall,['MD_' labels{j} '_WA']);
end
for j = 1:length(labels)
    labelsall = cat(2,labelsall,['MD_' labels{j} '_STD']);
end
for j = 1:length(labels)
    labelsall = cat(2,labelsall,['MD_' labels{j} '_Size [vox]']);
end
for j = 1:length(labels)
   labelsall = cat(2,labelsall,['AD_' labels{j} '_WA']);
end
for j = 1:length(labels)
  labelsall = cat(2,labelsall,['AD_' labels{j} '_STD']);
end
for j = 1:length(labels)
   labelsall = cat(2,labelsall,['AD_' labels{j} '_Size [vox]']);
end
for j = 1:length(labels)
   labelsall = cat(2,labelsall,['RD_' labels{j} '_WA']);
end
for j = 1:length(labels)
    labelsall = cat(2,labelsall,['RD_' labels{j} '_STD']);
end
for j = 1:length(labels)
   labelsall = cat(2,labelsall,['RD_' labels{j} '_Size [vox]']);
end

% create and fill up data table
table = cell2table(cell(size(data,1),2+12*size(labels,1)),'VariableNames',labelsall);
for k = 1:size(data,1)

    % check whether empty
    if exist([data{k} filesep 'dmri_cervical' filesep 'derivatives' filesep 'DTI-ROB' filesep 'metric_labels_FA_upperhalfFOV.csv'],'file')

        % load in text files as tables
        FA = readtable([data{k} filesep 'dmri_cervical' filesep 'derivatives' filesep 'DTI-ROB' filesep 'metric_labels_FA_upperhalfFOV.csv']);
        MD = readtable([data{k} filesep 'dmri_cervical' filesep 'derivatives' filesep 'DTI-ROB' filesep 'metric_labels_MD_upperhalfFOV.csv']); 
        AD = readtable([data{k} filesep 'dmri_cervical' filesep 'derivatives' filesep 'DTI-ROB' filesep 'metric_labels_AD_upperhalfFOV.csv']);
        RD = readtable([data{k} filesep 'dmri_cervical' filesep 'derivatives' filesep 'DTI-ROB' filesep 'metric_labels_RD_upperhalfFOV.csv']);

        % fill up the composite table
        table{k, 1}                                                   = {data{k}(end-9:end-6)};
        table{k, 2}                                                   = {data{k}(end-4:end)};
        table{k, (2+1)                     : (2+ 1*(size(labels,1)))} = num2cell(FA.WA__)';
        table{k, (2+(size(labels,1))+1)    : (2+ 2*(size(labels,1)))} = num2cell(FA.STD__)';
        table{k, (2+2*(size(labels,1))+1)  : (2+ 3*(size(labels,1)))} = num2cell(FA.Size_vox_)';
        table{k, (2+3*(size(labels,1))+1)  : (2+ 4*(size(labels,1)))} = num2cell(MD.WA__)';
        table{k, (2+4*(size(labels,1))+1)  : (2+ 5*(size(labels,1)))} = num2cell(MD.STD__)';
        table{k, (2+5*(size(labels,1))+1)  : (2+ 6*(size(labels,1)))} = num2cell(MD.Size_vox_)';
        table{k, (2+6*(size(labels,1))+1)  : (2+ 7*(size(labels,1)))} = num2cell(AD.WA__)';
        table{k, (2+7*(size(labels,1))+1)  : (2+ 8*(size(labels,1)))} = num2cell(AD.STD__)';
        table{k, (2+8*(size(labels,1))+1)  : (2+ 9*(size(labels,1)))} = num2cell(AD.Size_vox_)';
        table{k, (2+9*(size(labels,1))+1)  : (2+10*(size(labels,1)))} = num2cell(RD.WA__)';
        table{k, (2+10*(size(labels,1))+1) : (2+11*(size(labels,1)))} = num2cell(RD.STD__)';
        table{k, (2+11*(size(labels,1))+1) : (2+12*(size(labels,1)))} = num2cell(RD.Size_vox_)';
    else
        table{k,:} = num2cell(NaN(1,2+12*size(labels,1)));
    end

end

writetable(table,('DTI_atlas_combined_results_upperhalfFOV.csv'));

fprintf('Done')

end

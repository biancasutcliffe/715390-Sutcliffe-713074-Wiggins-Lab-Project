% Author: Bianca Sutcliffe 
function [collected_data] = collect_LSF_points(input,frame_size,amount_training_data)
% Collects all the LSF data into specific freqency clusters for all 50 LSF
% frequencies using all the obtained LSF data
    % input is all the LSF data collected
    % frame_size is the size of the frames used
    % amount_training_data is the amount of training data used to get that
    % specific input

% initialise arrays to hold the LSF points
LSF_1 =[];
LSF_2 =[];
LSF_3 =[];
LSF_4 =[];
LSF_5 =[];
LSF_6 =[];
LSF_7 =[];
LSF_8 =[];
LSF_9 =[];
LSF_10 =[];
LSF_11 =[];
LSF_12 =[];
LSF_13 =[];
LSF_14 =[];
LSF_15 =[];
LSF_16 =[];
LSF_17 =[];
LSF_18 =[];
LSF_19 =[];
LSF_20 =[];
LSF_21 =[];
LSF_22 =[];
LSF_23 =[];
LSF_24 =[];
LSF_25 =[];
LSF_26 =[];
LSF_27 =[];
LSF_28 =[];
LSF_29 =[];
LSF_30 =[];
LSF_31 =[];
LSF_32 =[];
LSF_33 =[];
LSF_34 =[];
LSF_35 =[];
LSF_36 =[];
LSF_37 =[];
LSF_38 =[];
LSF_39 =[];
LSF_40 =[];
LSF_41 =[];
LSF_42 =[];
LSF_43 =[];
LSF_44 =[];
LSF_45 =[];
LSF_46 =[];
LSF_47 =[];
LSF_48 =[];
LSF_49 =[];
LSF_50 =[];

% collect the specific LSF 
for i= 1:frame_size
    % segment the data into their respective frequencies
    for j=1:50:(50*amount_training_data)
        
            LSF_1 =[LSF_1; input(j,i)];
            LSF_2 =[LSF_2; input(j+1,i)];
            LSF_3 =[LSF_3; input(j+2,i)];
            LSF_4 =[LSF_4; input(j+3,i)];
            LSF_5 =[LSF_5; input(j+4,i)];
            LSF_6 =[LSF_6; input(j+5,i)];
            LSF_7 =[LSF_7; input(j+6,i)];
            LSF_8 =[LSF_8; input(j+7,i)];
            LSF_9 =[LSF_9; input(j+8,i)];
            LSF_10 =[LSF_10; input(j+9,i)];
            LSF_11 =[LSF_11; input(j+10,i)];
            LSF_12 =[LSF_12; input(j+11,i)];
            LSF_13 =[LSF_13; input(j+12,i)];
            LSF_14 =[LSF_14; input(j+13,i)];
            LSF_15 =[LSF_15; input(j+14,i)];
            LSF_16 =[LSF_16; input(j+15,i)];
            LSF_17 =[LSF_17; input(j+16,i)];
            LSF_18 =[LSF_18; input(j+17,i)];
            LSF_19 =[LSF_19; input(j+18,i)];
            LSF_20 =[LSF_20; input(j+19,i)];
            LSF_21 =[LSF_21; input(j+20,i)];
            LSF_22 =[LSF_22; input(j+21,i)];
            LSF_23 =[LSF_23; input(j+22,i)];
            LSF_24 =[LSF_24; input(j+23,i)];
            LSF_25 =[LSF_25; input(j+24,i)];
            LSF_26 =[LSF_26; input(j+25,i)];
            LSF_27 =[LSF_27; input(j+26,i)];
            LSF_28 =[LSF_28; input(j+27,i)];
            LSF_29 =[LSF_29; input(j+28,i)];
            LSF_30 =[LSF_30; input(j+29,i)];
            LSF_31 =[LSF_31; input(j+30,i)];
            LSF_32 =[LSF_32; input(j+31,i)];
            LSF_33 =[LSF_33; input(j+32,i)];
            LSF_34 =[LSF_34; input(j+33,i)];
            LSF_35 =[LSF_35; input(j+34,i)];
            LSF_36 =[LSF_36; input(j+35,i)];
            LSF_37 =[LSF_37; input(j+36,i)];
            LSF_38 =[LSF_38; input(j+37,i)];
            LSF_39 =[LSF_39; input(j+38,i)];
            LSF_40 =[LSF_40; input(j+39,i)];
            LSF_41 =[LSF_41; input(j+40,i)];
            LSF_42 =[LSF_42; input(j+41,i)];
            LSF_43 =[LSF_43; input(j+42,i)];
            LSF_44 =[LSF_44; input(j+43,i)];
            LSF_45 =[LSF_45; input(j+44,i)];
            LSF_46 =[LSF_46; input(j+45,i)];
            LSF_47 =[LSF_47; input(j+46,i)];
            LSF_48 =[LSF_48; input(j+47,i)];
            LSF_49 =[LSF_49; input(j+48,i)];
            LSF_50 =[LSF_50; input(j+49,i)];
    end
   
end
% place results in one big vector
collected_data = [LSF_1,...
                LSF_2 ,...
                LSF_3 ,...
                LSF_4 ,...
                LSF_5 ,...
                LSF_6 ,...
                LSF_7,...
                LSF_8 ,...
                LSF_9 ,...
                LSF_10 ,...
                LSF_11 ,...
                LSF_12 ,...
                LSF_13 ,...
                LSF_14 ,...
                LSF_15 ,...
                LSF_16 ,...
                LSF_17 ,...
                LSF_18 ,...
                LSF_19 ,...
                LSF_20 ,...
                LSF_21 ,...
                LSF_22 ,...
                LSF_23 ,...
                LSF_24 ,...
                LSF_25 ,...
                LSF_26 ,...
                LSF_27 ,...
                LSF_28 ,...
                LSF_29 ,...
                LSF_30 ,...
                LSF_31 ,...
                LSF_32 ,...
                LSF_33 ,...
                LSF_34 ,...
                LSF_35 ,...
                LSF_36 ,...
                LSF_37 ,...
                LSF_38 ,...
                LSF_39 ,...
                LSF_40 ,...
                LSF_41 ,...
                LSF_42 ,...
                LSF_43 ,...
                LSF_44 ,...
                LSF_45 ,...
                LSF_46 ,...
                LSF_47 ,...
                LSF_48 ,...
                LSF_49 ,...
                LSF_50];
end

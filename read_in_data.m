% Author: Bianca Sutcliffe
function [ audio_input_human,audio_input_robot, fs , shortest_length, rows] = read_in_data()
% Reads in the audio files used for training 
    % audio_input_human contains all the digitilised audio information
    % audio_input_robot contains all the digitilised audio information
    % fs is the sampling frequency (which is 48 kHz for all the data used)
	% shortest_length returns the shortest length audio clip 
    % rows indicate how much training data was used 
  
% read in the human audio data
[x,fs] = audioread('Voices_233\human_p233_012.wav');
[x2,fs] = audioread('Voices_233\human_p233_002.wav');
[x3,fs] = audioread('Voices_233\human_p233_003.wav');
[x4,fs] = audioread('Voices_233\human_p233_004.wav');
[x5,fs] = audioread('Voices_233\human_p233_005.wav');
[x6,fs] = audioread('Voices_233\human_p233_006.wav');
[x7,fs] = audioread('Voices_233\human_p233_007.wav');
[x8,fs] = audioread('Voices_233\human_p233_008.wav');
[x9,fs] = audioread('Voices_233\human_p233_009.wav');
[x10,fs] = audioread('Voices_233\human_p233_013.wav');

[x11,fs] = audioread('Voices_233\human_p233_014.wav');
[x12,fs] = audioread('Voices_233\human_p233_015.wav');
[x13,fs] = audioread('Voices_233\human_p233_016.wav');
[x14,fs] = audioread('Voices_233\human_p233_017.wav');
[x15,fs] = audioread('Voices_233\human_p233_018.wav');
[x16,fs] = audioread('Voices_233\human_p233_019.wav');
[x17,fs] = audioread('Voices_233\human_p233_020.wav');
[x18,fs] = audioread('Voices_233\human_p233_021.wav');
[x19,fs] = audioread('Voices_233\human_p233_022.wav');
[x20,fs] = audioread('Voices_233\human_p233_023.wav');

[x21,fs] = audioread('Voices_233\human_p233_024.wav');
[x22,fs] = audioread('Voices_233\human_p233_025.wav');
[x23,fs] = audioread('Voices_233\human_p233_027.wav');
[x24,fs] = audioread('Voices_233\human_p233_028.wav');
[x25,fs] = audioread('Voices_233\human_p233_029.wav');
[x26,fs] = audioread('Voices_233\human_p233_030.wav');
[x27,fs] = audioread('Voices_233\human_p233_032.wav');
[x28,fs] = audioread('Voices_233\human_p233_037.wav');
[x29,fs] = audioread('Voices_233\human_p233_038.wav');
[x30,fs] = audioread('Voices_233\human_p233_039.wav');

[x31,fs] = audioread('Voices_233\human_p233_040.wav');
[x32,fs] = audioread('Voices_233\human_p233_041.wav');
[x33,fs] = audioread('Voices_233\human_p233_043.wav');
[x34,fs] = audioread('Voices_233\human_p233_044.wav');
[x35,fs] = audioread('Voices_233\human_p233_045.wav');
[x36,fs] = audioread('Voices_233\human_p233_047.wav');
[x37,fs] = audioread('Voices_233\human_p233_048.wav');
[x38,fs] = audioread('Voices_233\human_p233_049.wav');
[x39,fs] = audioread('Voices_233\human_p233_050.wav');
[x40,fs] = audioread('Voices_233\human_p233_051.wav');

[x41,fs] = audioread('Voices_233\human_p233_052.wav');
[x42,fs] = audioread('Voices_233\human_p233_055.wav');
[x43,fs] = audioread('Voices_233\human_p233_057.wav');
[x44,fs] = audioread('Voices_233\human_p233_070.wav');
[x45,fs] = audioread('Voices_233\human_p233_071.wav');
[x46,fs] = audioread('Voices_233\human_p233_074.wav');
[x47,fs] = audioread('Voices_233\human_p233_075.wav');
[x48,fs] = audioread('Voices_233\human_p233_079.wav');
[x49,fs] = audioread('Voices_233\human_p233_080.wav');
[x50,fs] = audioread('Voices_233\human_p233_081.wav');
   
% read in the robot input data
[xx,fs] = audioread('Voices_233\dtw_robo_p233_012.wav');
[xx2,fs] = audioread('Voices_233\dtw_robo_p233_002.wav');
[xx3,fs] = audioread('Voices_233\dtw_robo_p233_003.wav');
[xx4,fs] = audioread('Voices_233\dtw_robo_p233_004.wav');
[xx5,fs] = audioread('Voices_233\dtw_robo_p233_005.wav');
[xx6,fs] = audioread('Voices_233\dtw_robo_p233_006.wav');
[xx7,fs] = audioread('Voices_233\dtw_robo_p233_007.wav');
[xx8,fs] = audioread('Voices_233\dtw_robo_p233_008.wav');
[xx9,fs] = audioread('Voices_233\dtw_robo_p233_009.wav');
[xx10,fs] = audioread('Voices_233\dtw_robo_p233_013.wav');

[xx11,fs] = audioread('Voices_233\dtw_robo_p233_014.wav');
[xx12,fs] = audioread('Voices_233\dtw_robo_p233_015.wav');
[xx13,fs] = audioread('Voices_233\dtw_robo_p233_016.wav');
[xx14,fs] = audioread('Voices_233\dtw_robo_p233_017.wav');
[xx15,fs] = audioread('Voices_233\dtw_robo_p233_018.wav');
[xx16,fs] = audioread('Voices_233\dtw_robo_p233_019.wav');
[xx17,fs] = audioread('Voices_233\dtw_robo_p233_020.wav');
[xx18,fs] = audioread('Voices_233\dtw_robo_p233_021.wav');
[xx19,fs] = audioread('Voices_233\dtw_robo_p233_022.wav');
[xx20,fs] = audioread('Voices_233\dtw_robo_p233_023.wav');

[xx21,fs] = audioread('Voices_233\dtw_robo_p233_024.wav');
[xx22,fs] = audioread('Voices_233\dtw_robo_p233_025.wav');
[xx23,fs] = audioread('Voices_233\dtw_robo_p233_027.wav');
[xx24,fs] = audioread('Voices_233\dtw_robo_p233_028.wav');
[xx25,fs] = audioread('Voices_233\dtw_robo_p233_029.wav');
[xx26,fs] = audioread('Voices_233\dtw_robo_p233_030.wav');
[xx27,fs] = audioread('Voices_233\dtw_robo_p233_032.wav');
[xx28,fs] = audioread('Voices_233\dtw_robo_p233_037.wav');
[xx29,fs] = audioread('Voices_233\dtw_robo_p233_038.wav');
[xx30,fs] = audioread('Voices_233\dtw_robo_p233_039.wav');

[xx31,fs] = audioread('Voices_233\dtw_robo_p233_040.wav');
[xx32,fs] = audioread('Voices_233\dtw_robo_p233_041.wav');
[xx33,fs] = audioread('Voices_233\dtw_robo_p233_043.wav');
[xx34,fs] = audioread('Voices_233\dtw_robo_p233_044.wav');
[xx35,fs] = audioread('Voices_233\dtw_robo_p233_045.wav');
[xx36,fs] = audioread('Voices_233\dtw_robo_p233_047.wav');
[xx37,fs] = audioread('Voices_233\dtw_robo_p233_048.wav');
[xx38,fs] = audioread('Voices_233\dtw_robo_p233_049.wav');
[xx39,fs] = audioread('Voices_233\dtw_robo_p233_050.wav');
[xx40,fs] = audioread('Voices_233\dtw_robo_p233_051.wav');

[xx41,fs] = audioread('Voices_233\dtw_robo_p233_052.wav');
[xx42,fs] = audioread('Voices_233\dtw_robo_p233_055.wav');
[xx43,fs] = audioread('Voices_233\dtw_robo_p233_057.wav');
[xx44,fs] = audioread('Voices_233\dtw_robo_p233_070.wav');
[xx45,fs] = audioread('Voices_233\dtw_robo_p233_071.wav');
[xx46,fs] = audioread('Voices_233\dtw_robo_p233_074.wav');
[xx47,fs] = audioread('Voices_233\dtw_robo_p233_075.wav');
[xx48,fs] = audioread('Voices_233\dtw_robo_p233_079.wav');
[xx49,fs] = audioread('Voices_233\dtw_robo_p233_080.wav');
[xx50,fs] = audioread('Voices_233\dtw_robo_p233_081.wav');

% Find the shortest length audio file
shortest_length = [length(x),length(x2),length(x3),length(x4),length(x5),length(x6),length(x7),length(x8),length(x9),length(x10),...
                    length(x11),length(x12),length(x13),length(x14),length(x15),length(x16),length(x17),length(x18),length(x19),length(x20),...
                    length(x21),length(x22),length(x23),length(x24),length(x25),length(x26),length(x27),length(x28),length(x29),length(x30),...
                    length(x31),length(x32),length(x33),length(x34),length(x35),length(x36),length(x37),length(x38),length(x39),length(x40),...
                    length(x41),length(x42),length(x43),length(x44),length(x45),length(x46),length(x47),length(x48),length(x49),length(x50),...
                    length(xx),length(xx2),length(xx3),length(xx4),length(xx5),length(xx6),length(xx7),length(xx8),length(xx9),length(xx10),...
                    length(xx11),length(xx12),length(xx13),length(xx14),length(xx15),length(xx16),length(xx17),length(xx18),length(xx19),length(xx20),...
                    length(xx21),length(xx22),length(xx23),length(xx24),length(xx25),length(xx26),length(xx27),length(xx28),length(xx29),length(xx30),...
                    length(xx31),length(x32),length(xx33),length(xx34),length(xx35),length(xx36),length(xx37),length(xx38),length(xx39),length(xx40),...
                    length(xx41),length(xx42),length(xx43),length(xx44),length(xx45),length(xx46),length(xx47),length(xx48),length(xx49),length(xx50)];
              
 [shortest_length] = min(shortest_length);

 % Clip all the input audio to the size of the shortest file
if length(x) >= shortest_length
     end_length =  length(x) - shortest_length;
     x = x(1:length(x)-end_length,1)';
end
if length(x2) >= shortest_length
     end_length =  length(x2) - shortest_length;
     x2 = x2(1:length(x2)-end_length,1)';
end
if length(x3) >= shortest_length
     end_length =  length(x3) - shortest_length;
     x3 = x3(1:length(x3)-end_length,1)';
end
if length(x4) >= shortest_length
     end_length =  length(x4) - shortest_length;
     x4 = x4(1:length(x4)-end_length,1)';
end
if length(x5) >= shortest_length
     end_length =  length(x5) - shortest_length;
     x5 = x5(1:length(x5)-end_length,1)';
end
if length(x6) >= shortest_length
     end_length =  length(x6) - shortest_length;
     x6 = x6(1:length(x6)-end_length,1)';
end
if length(x7) >= shortest_length
     end_length =  length(x7) - shortest_length;
     x7 = x7(1:length(x7)-end_length,1)';
end
if length(x8) >= shortest_length
     end_length =  length(x8) - shortest_length;
     x8 = x8(1:length(x8)-end_length,1)';
end
if length(x9) >= shortest_length
     end_length =  length(x9) - shortest_length;
     x9 = x9(1:length(x9)-end_length,1)';
end
if length(x10) >= shortest_length
     end_length =  length(x10) - shortest_length;
     x10 = x10(1:length(x10)-end_length,1)';
end
if length(x11) >= shortest_length
     end_length =  length(x11) - shortest_length;
     x11 = x11(1:length(x11)-end_length,1)';
end
if length(x12) >= shortest_length
     end_length =  length(x12) - shortest_length;
     x12 = x12(1:length(x12)-end_length,1)';
end
if length(x13) >= shortest_length
     end_length =  length(x13) - shortest_length;
     x13 = x13(1:length(x13)-end_length,1)';
end
if length(x14) >= shortest_length
     end_length =  length(x14) - shortest_length;
     x14 = x14(1:length(x14)-end_length,1)';
end
if length(x15) >= shortest_length
     end_length =  length(x15) - shortest_length;
     x15 = x15(1:length(x15)-end_length,1)';
end
if length(x16) >= shortest_length
     end_length =  length(x16) - shortest_length;
     x16 = x16(1:length(x16)-end_length,1)';
end
if length(x17) >= shortest_length
     end_length =  length(x17) - shortest_length;
     x17 = x17(1:length(x17)-end_length,1)';
end
if length(x18) >= shortest_length
     end_length =  length(x18) - shortest_length;
     x18 = x18(1:length(x18)-end_length,1)';
end
if length(x19) >= shortest_length
     end_length =  length(x19) - shortest_length;
     x19 = x19(1:length(x19)-end_length,1)';
end
if length(x20) >= shortest_length
     end_length =  length(x20) - shortest_length;
     x20 = x20(1:length(x20)-end_length,1)';
end
if length(x21) >= shortest_length
     end_length =  length(x21) - shortest_length;
     x21 = x21(1:length(x21)-end_length,1)';
end
if length(x22) >= shortest_length
     end_length =  length(x22) - shortest_length;
     x22 = x22(1:length(x22)-end_length,1)';
end
if length(x23) >= shortest_length
     end_length =  length(x23) - shortest_length;
     x23 = x23(1:length(x23)-end_length,1)';
end
if length(x24) >= shortest_length
     end_length =  length(x24) - shortest_length;
     x24 = x24(1:length(x24)-end_length,1)';
end
if length(x25) >= shortest_length
     end_length =  length(x25) - shortest_length;
     x25 = x25(1:length(x25)-end_length,1)';
end
if length(x26) >= shortest_length
     end_length =  length(x26) - shortest_length;
     x26 = x26(1:length(x26)-end_length,1)';
end
if length(x27) >= shortest_length
     end_length =  length(x27) - shortest_length;
     x27 = x27(1:length(x27)-end_length,1)';
end
if length(x28) >= shortest_length
     end_length =  length(x28) - shortest_length;
     x28 = x28(1:length(x28)-end_length,1)';
end
if length(x29) >= shortest_length
     end_length =  length(x29) - shortest_length;
     x29 = x29(1:length(x29)-end_length,1)';
end
if length(x30) >= shortest_length
     end_length =  length(x30) - shortest_length;
     x30 = x30(1:length(x30)-end_length,1)';
end
if length(x31) >= shortest_length
     end_length =  length(x31) - shortest_length;
     x31 = x31(1:length(x31)-end_length,1)';
end
if length(x32) >= shortest_length
     end_length =  length(x32) - shortest_length;
     x32 = x32(1:length(x32)-end_length,1)';
end
if length(x33) >= shortest_length
     end_length =  length(x33) - shortest_length;
     x33 = x33(1:length(x33)-end_length,1)';
end
if length(x34) >= shortest_length
     end_length =  length(x34) - shortest_length;
     x34 = x34(1:length(x34)-end_length,1)';
end
if length(x35) >= shortest_length
     end_length =  length(x35) - shortest_length;
     x35 = x35(1:length(x35)-end_length,1)';
end
if length(x36) >= shortest_length
     end_length =  length(x36) - shortest_length;
     x36 = x36(1:length(x36)-end_length,1)';
end
if length(x37) >= shortest_length
     end_length =  length(x37) - shortest_length;
     x37 = x37(1:length(x37)-end_length,1)';
end
if length(x38) >= shortest_length
     end_length =  length(x38) - shortest_length;
     x38 = x38(1:length(x38)-end_length,1)';
end
if length(x39) >= shortest_length
     end_length =  length(x39) - shortest_length;
     x39 = x39(1:length(x39)-end_length,1)';
end
if length(x40) >= shortest_length
     end_length =  length(x40) - shortest_length;
     x40 = x40(1:length(x40)-end_length,1)';
end
if length(x41) >= shortest_length
     end_length =  length(x41) - shortest_length;
     x41 = x41(1:length(x41)-end_length,1)';
end
if length(x42) >= shortest_length
     end_length =  length(x42) - shortest_length;
     x42 = x42(1:length(x42)-end_length,1)';
end
if length(x43) >= shortest_length
     end_length =  length(x43) - shortest_length;
     x43 = x43(1:length(x43)-end_length,1)';
end
if length(x44) >= shortest_length
     end_length =  length(x44) - shortest_length;
     x44 = x44(1:length(x44)-end_length,1)';
end
if length(x45) >= shortest_length
     end_length =  length(x45) - shortest_length;
     x45 = x45(1:length(x45)-end_length,1)';
end
if length(x46) >= shortest_length
     end_length =  length(x46) - shortest_length;
     x46 = x46(1:length(x46)-end_length,1)';
end
if length(x47) >= shortest_length
     end_length =  length(x47) - shortest_length;
     x47 = x47(1:length(x47)-end_length,1)';
end
if length(x48) >= shortest_length
     end_length =  length(x48) - shortest_length;
     x48 = x48(1:length(x48)-end_length,1)';
end
if length(x49) >= shortest_length
     end_length =  length(x49) - shortest_length;
     x49 = x49(1:length(x49)-end_length,1)';
end
if length(x50) >= shortest_length
     end_length =  length(x50) - shortest_length;
     x50 = x50(1:length(x50)-end_length,1)';
end

% robot
if length(xx) >= shortest_length
     end_length =  length(xx) - shortest_length;
     xx = xx(1:length(xx)-end_length,1)';
end
if length(xx2) >= shortest_length
     end_length =  length(xx2) - shortest_length;
     xx2 = xx2(1:length(xx2)-end_length,1)';
end
if length(xx3) >= shortest_length
     end_length =  length(xx3) - shortest_length;
     xx3 = xx3(1:length(xx3)-end_length,1)';
end
if length(xx4) >= shortest_length
     end_length =  length(xx4) - shortest_length;
     xx4 = xx4(1:length(xx4)-end_length,1)';
end
if length(xx5) >= shortest_length
     end_length =  length(xx5) - shortest_length;
     xx5 = xx5(1:length(xx5)-end_length,1)';
end

if length(xx6) >= shortest_length
     end_length =  length(xx6) - shortest_length;
     xx6 = xx6(1:length(xx6)-end_length,1)';
end
if length(xx7) >= shortest_length
     end_length =  length(xx7) - shortest_length;
     xx7 = xx7(1:length(xx7)-end_length,1)';
end
if length(xx8) >= shortest_length
     end_length =  length(xx8) - shortest_length;
     xx8 = xx8(1:length(xx8)-end_length,1)';
end
if length(xx9) >= shortest_length
     end_length =  length(xx9) - shortest_length;
     xx9 = xx9(1:length(xx9)-end_length,1)';
end
if length(xx10) >= shortest_length
     end_length =  length(xx10) - shortest_length;
     xx10 = xx10(1:length(xx10)-end_length,1)';
end
if length(xx11) >= shortest_length
     end_length =  length(xx11) - shortest_length;
     xx11 = xx11(1:length(xx11)-end_length,1)';
end
if length(xx12) >= shortest_length
     end_length =  length(xx12) - shortest_length;
     xx12 = xx12(1:length(xx12)-end_length,1)';
end
if length(xx13) >= shortest_length
     end_length =  length(xx13) - shortest_length;
     xx13 = xx13(1:length(xx13)-end_length,1)';
end
if length(xx14) >= shortest_length
     end_length =  length(xx14) - shortest_length;
     xx14 = xx14(1:length(xx14)-end_length,1)';
end
if length(xx15) >= shortest_length
     end_length =  length(xx15) - shortest_length;
     xx15 = xx15(1:length(xx15)-end_length,1)';
end
if length(xx16) >= shortest_length
     end_length =  length(xx16) - shortest_length;
     xx16 = xx16(1:length(xx16)-end_length,1)';
end
if length(xx17) >= shortest_length
     end_length =  length(xx17) - shortest_length;
     xx17 = xx17(1:length(xx17)-end_length,1)';
end
if length(xx18) >= shortest_length
     end_length =  length(xx18) - shortest_length;
     xx18 = xx18(1:length(xx18)-end_length,1)';
end
if length(xx19) >= shortest_length
     end_length =  length(xx19) - shortest_length;
     xx19 = xx19(1:length(xx19)-end_length,1)';
end
if length(xx20) >= shortest_length
     end_length =  length(xx20) - shortest_length;
     xx20 = xx20(1:length(xx20)-end_length,1)';
end
if length(xx21) >= shortest_length
     end_length =  length(xx21) - shortest_length;
     xx21 = xx21(1:length(xx21)-end_length,1)';
end
if length(xx22) >= shortest_length
     end_length =  length(xx22) - shortest_length;
     xx22 = xx22(1:length(xx22)-end_length,1)';
end
if length(xx23) >= shortest_length
     end_length =  length(xx23) - shortest_length;
     xx23 = xx23(1:length(xx23)-end_length,1)';
end
if length(xx24) >= shortest_length
     end_length =  length(xx24) - shortest_length;
     xx24 = xx24(1:length(xx24)-end_length,1)';
end
if length(xx25) >= shortest_length
     end_length =  length(xx25) - shortest_length;
     xx25 = xx25(1:length(xx25)-end_length,1)';
end
if length(xx26) >= shortest_length
     end_length =  length(xx26) - shortest_length;
     xx26 = xx26(1:length(xx26)-end_length,1)';
end
if length(xx27) >= shortest_length
     end_length =  length(xx27) - shortest_length;
     xx27 = xx27(1:length(xx27)-end_length,1)';
end
if length(xx28) >= shortest_length
     end_length =  length(xx28) - shortest_length;
     xx28 = xx28(1:length(xx28)-end_length,1)';
end
if length(xx29) >= shortest_length
     end_length =  length(xx29) - shortest_length;
     xx29 = xx29(1:length(xx29)-end_length,1)';
end
if length(xx30) >= shortest_length
     end_length =  length(xx30) - shortest_length;
     xx30 = xx30(1:length(xx30)-end_length,1)';
end
if length(xx31) >= shortest_length
     end_length =  length(xx31) - shortest_length;
     xx31 = xx31(1:length(xx31)-end_length,1)';
end
if length(xx32) >= shortest_length
     end_length =  length(xx32) - shortest_length;
     xx32 = xx32(1:length(xx32)-end_length,1)';
end
if length(xx33) >= shortest_length
     end_length =  length(xx33) - shortest_length;
     xx33 = xx33(1:length(xx33)-end_length,1)';
end
if length(xx34) >= shortest_length
     end_length =  length(xx34) - shortest_length;
     xx34 = xx34(1:length(xx34)-end_length,1)';
end
if length(xx35) >= shortest_length
     end_length =  length(xx35) - shortest_length;
     xx35 = xx35(1:length(xx35)-end_length,1)';
end
if length(xx36) >= shortest_length
     end_length =  length(xx36) - shortest_length;
     xx36 = xx36(1:length(xx36)-end_length,1)';
end
if length(xx37) >= shortest_length
     end_length =  length(xx37) - shortest_length;
     xx37 = xx37(1:length(xx37)-end_length,1)';
end
if length(xx38) >= shortest_length
     end_length =  length(xx38) - shortest_length;
     xx38 = xx38(1:length(xx38)-end_length,1)';
end
if length(xx39) >= shortest_length
     end_length =  length(xx39) - shortest_length;
     xx39 = xx39(1:length(xx39)-end_length,1)';
end
if length(xx40) >= shortest_length
     end_length =  length(xx40) - shortest_length;
     xx40 = xx40(1:length(xx40)-end_length,1)';
end
if length(xx41) >= shortest_length
     end_length =  length(xx41) - shortest_length;
     xx41 = xx41(1:length(xx41)-end_length,1)';
end
if length(xx42) >= shortest_length
     end_length =  length(xx42) - shortest_length;
     xx42 = xx42(1:length(xx42)-end_length,1)';
end
if length(x43) >= shortest_length
     end_length =  length(xx43) - shortest_length;
     xx43 = xx43(1:length(xx43)-end_length,1)';
end
if length(x44) >= shortest_length
     end_length =  length(xx44) - shortest_length;
     xx44 = xx44(1:length(xx44)-end_length,1)';
end
if length(xx45) >= shortest_length
     end_length =  length(xx45) - shortest_length;
     xx45 = xx45(1:length(xx45)-end_length,1)';
end
if length(xx46) >= shortest_length
     end_length =  length(xx46) - shortest_length;
     xx46 = xx46(1:length(xx46)-end_length,1)';
end
if length(xx47) >= shortest_length
     end_length =  length(xx47) - shortest_length;
     xx47 = xx47(1:length(xx47)-end_length,1)';
end
if length(xx48) >= shortest_length
     end_length =  length(xx48) - shortest_length;
     xx48 = xx48(1:length(xx48)-end_length,1)';
end
if length(xx49) >= shortest_length
     end_length =  length(xx49) - shortest_length;
     xx49 = xx49(1:length(xx49)-end_length,1)';
end
if length(xx50) >= shortest_length
     end_length =  length(xx50) - shortest_length;
     xx50 = xx50(1:length(xx50)-end_length,1)';
end
    
% concatinate the human digital audio input
audio_input_human = [x;x2;x3;x4;x5;x6;x7;x8;x9;x10;...
                     x11;x12;x13;x14;x15;x16;x17;x18;x19;x20;...
                     x21;x22;x23;x24;x25;x26;x27;x28;x29;x30;...
                     x31;x32;x33;x34;x35;x36;x37;x38;x39;x40;...
                     x41;x42;x43;x44;x45;x46;x47;x48;x49;x50];
                 
% concatinate the robot digital audio input
audio_input_robot = [xx;xx2;xx3;xx4;xx5;xx6;xx7;xx8;xx9;xx10;...
                     xx11;xx12;xx13;xx14;xx15;xx16;xx17;xx18;xx19;xx20;...
                     xx21;xx22;xx23;xx24;xx25;xx26;xx27;xx28;xx29;xx30;...
                     xx31;xx32;xx33;xx34;xx35;xx36;xx37;xx38;xx39;xx40;...
                     xx41;xx42;xx43;xx44;xx45;xx46;xx47;xx48;xx49;xx50];         

 % calculate the amount of training data used for human data
[rows,columns] = size(audio_input_human);
end


% Author: Lindzi Wiggins
function [ audio_h, fs, audio_r, fs2 ] = getTrainingData()
%getTrainingData Read in the set of training data for GMM

[audio_h1,fs] = audioread('Voices_233\human_p233_012.wav');
[audio_h2,fs] = audioread('Voices_233\human_p233_002.wav');
[audio_h3,fs] = audioread('Voices_233\human_p233_003.wav');
[audio_h4,fs] = audioread('Voices_233\human_p233_004.wav');
[audio_h5,fs] = audioread('Voices_233\human_p233_005.wav');
[audio_h6,fs] = audioread('Voices_233\human_p233_006.wav');
[audio_h7,fs] = audioread('Voices_233\human_p233_007.wav');
[audio_h8,fs] = audioread('Voices_233\human_p233_008.wav');
[audio_h9,fs] = audioread('Voices_233\human_p233_009.wav');
[audio_h10,fs] = audioread('Voices_233\human_p233_013.wav');

[audio_h11,fs] = audioread('Voices_233\human_p233_014.wav');
[audio_h12,fs] = audioread('Voices_233\human_p233_015.wav');
[audio_h13,fs] = audioread('Voices_233\human_p233_016.wav');
[audio_h14,fs] = audioread('Voices_233\human_p233_017.wav');
[audio_h15,fs] = audioread('Voices_233\human_p233_018.wav');
[audio_h16,fs] = audioread('Voices_233\human_p233_019.wav');
[audio_h17,fs] = audioread('Voices_233\human_p233_020.wav');
[audio_h18,fs] = audioread('Voices_233\human_p233_021.wav');
[audio_h19,fs] = audioread('Voices_233\human_p233_022.wav');
[audio_h20,fs] = audioread('Voices_233\human_p233_023.wav');

[audio_h21,fs] = audioread('Voices_233\human_p233_024.wav');
[audio_h22,fs] = audioread('Voices_233\human_p233_025.wav');
[audio_h23,fs] = audioread('Voices_233\human_p233_027.wav');
[audio_h24,fs] = audioread('Voices_233\human_p233_028.wav');
[audio_h25,fs] = audioread('Voices_233\human_p233_029.wav');
[audio_h26,fs] = audioread('Voices_233\human_p233_030.wav');
[audio_h27,fs] = audioread('Voices_233\human_p233_032.wav');
[audio_h28,fs] = audioread('Voices_233\human_p233_037.wav');
[audio_h29,fs] = audioread('Voices_233\human_p233_038.wav');
[audio_h30,fs] = audioread('Voices_233\human_p233_039.wav');

[audio_h31,fs] = audioread('Voices_233\human_p233_040.wav');
[audio_h32,fs] = audioread('Voices_233\human_p233_041.wav');
[audio_h33,fs] = audioread('Voices_233\human_p233_043.wav');
[audio_h34,fs] = audioread('Voices_233\human_p233_044.wav');
[audio_h35,fs] = audioread('Voices_233\human_p233_045.wav');
[audio_h36,fs] = audioread('Voices_233\human_p233_047.wav');
[audio_h37,fs] = audioread('Voices_233\human_p233_048.wav');
[audio_h38,fs] = audioread('Voices_233\human_p233_049.wav');
[audio_h39,fs] = audioread('Voices_233\human_p233_050.wav');
[audio_h40,fs] = audioread('Voices_233\human_p233_051.wav');

[audio_h41,fs] = audioread('Voices_233\human_p233_052.wav');
[audio_h42,fs] = audioread('Voices_233\human_p233_055.wav');
[audio_h43,fs] = audioread('Voices_233\human_p233_057.wav');
[audio_h44,fs] = audioread('Voices_233\human_p233_070.wav');
[audio_h45,fs] = audioread('Voices_233\human_p233_071.wav');
[audio_h46,fs] = audioread('Voices_233\human_p233_074.wav');
[audio_h47,fs] = audioread('Voices_233\human_p233_075.wav');
[audio_h48,fs] = audioread('Voices_233\human_p233_079.wav');
[audio_h49,fs] = audioread('Voices_233\human_p233_080.wav');
[audio_h50,fs] = audioread('Voices_233\human_p233_081.wav');

% Robot training data
[audio_r1,fs2] = audioread('Voices_233\dtw_robo_p233_012.wav');
[audio_r2,fs2] = audioread('Voices_233\dtw_robo_p233_002.wav');
[audio_r3,fs2] = audioread('Voices_233\dtw_robo_p233_003.wav');
[audio_r4,fs2] = audioread('Voices_233\dtw_robo_p233_004.wav');
[audio_r5,fs2] = audioread('Voices_233\dtw_robo_p233_005.wav');
[audio_r6,fs2] = audioread('Voices_233\dtw_robo_p233_006.wav');
[audio_r7,fs2] = audioread('Voices_233\dtw_robo_p233_007.wav');
[audio_r8,fs2] = audioread('Voices_233\dtw_robo_p233_008.wav');
[audio_r9,fs2] = audioread('Voices_233\dtw_robo_p233_009.wav');
[audio_r10,fs2] = audioread('Voices_233\dtw_robo_p233_013.wav');

[audio_r11,fs2] = audioread('Voices_233\dtw_robo_p233_014.wav');
[audio_r12,fs2] = audioread('Voices_233\dtw_robo_p233_015.wav');
[audio_r13,fs2] = audioread('Voices_233\dtw_robo_p233_016.wav');
[audio_r14,fs2] = audioread('Voices_233\dtw_robo_p233_017.wav');
[audio_r15,fs2] = audioread('Voices_233\dtw_robo_p233_018.wav');
[audio_r16,fs2] = audioread('Voices_233\dtw_robo_p233_019.wav');
[audio_r17,fs2] = audioread('Voices_233\dtw_robo_p233_020.wav');
[audio_r18,fs2] = audioread('Voices_233\dtw_robo_p233_021.wav');
[audio_r19,fs2] = audioread('Voices_233\dtw_robo_p233_022.wav');
[audio_r20,fs2] = audioread('Voices_233\dtw_robo_p233_023.wav');

[audio_r21,fs2] = audioread('Voices_233\dtw_robo_p233_024.wav');
[audio_r22,fs2] = audioread('Voices_233\dtw_robo_p233_025.wav');
[audio_r23,fs2] = audioread('Voices_233\dtw_robo_p233_027.wav');
[audio_r24,fs2] = audioread('Voices_233\dtw_robo_p233_028.wav');
[audio_r25,fs2] = audioread('Voices_233\dtw_robo_p233_029.wav');
[audio_r26,fs2] = audioread('Voices_233\dtw_robo_p233_030.wav');
[audio_r27,fs2] = audioread('Voices_233\dtw_robo_p233_032.wav');
[audio_r28,fs2] = audioread('Voices_233\dtw_robo_p233_037.wav');
[audio_r29,fs2] = audioread('Voices_233\dtw_robo_p233_038.wav');
[audio_r30,fs2] = audioread('Voices_233\dtw_robo_p233_039.wav');

[audio_r31,fs2] = audioread('Voices_233\dtw_robo_p233_040.wav');
[audio_r32,fs2] = audioread('Voices_233\dtw_robo_p233_041.wav');
[audio_r33,fs2] = audioread('Voices_233\dtw_robo_p233_043.wav');
[audio_r34,fs2] = audioread('Voices_233\dtw_robo_p233_044.wav');
[audio_r35,fs2] = audioread('Voices_233\dtw_robo_p233_045.wav');
[audio_r36,fs2] = audioread('Voices_233\dtw_robo_p233_047.wav');
[audio_r37,fs2] = audioread('Voices_233\dtw_robo_p233_048.wav');
[audio_r38,fs2] = audioread('Voices_233\dtw_robo_p233_049.wav');
[audio_r39,fs2] = audioread('Voices_233\dtw_robo_p233_050.wav');
[audio_r40,fs2] = audioread('Voices_233\dtw_robo_p233_051.wav');

[audio_r41,fs2] = audioread('Voices_233\dtw_robo_p233_052.wav');
[audio_r42,fs2] = audioread('Voices_233\dtw_robo_p233_055.wav');
[audio_r43,fs2] = audioread('Voices_233\dtw_robo_p233_057.wav');
[audio_r44,fs2] = audioread('Voices_233\dtw_robo_p233_070.wav');
[audio_r45,fs2] = audioread('Voices_233\dtw_robo_p233_071.wav');
[audio_r46,fs2] = audioread('Voices_233\dtw_robo_p233_074.wav');
[audio_r47,fs2] = audioread('Voices_233\dtw_robo_p233_075.wav');
[audio_r48,fs2] = audioread('Voices_233\dtw_robo_p233_079.wav');
[audio_r49,fs2] = audioread('Voices_233\dtw_robo_p233_080.wav');
[audio_r50,fs2] = audioread('Voices_233\dtw_robo_p233_081.wav');

audio_h = [audio_h1;audio_h2;audio_h3;audio_h4;audio_h5;...
           audio_h6;audio_h7;audio_h8;audio_h9;audio_h10;...
           audio_h11;audio_h12;audio_h13;audio_h14;audio_h15;...
           audio_h16;audio_h17;audio_h18;audio_h19;audio_h20;...
           audio_h21;audio_h22;audio_h23;audio_h24;audio_h25;...
           audio_h26;audio_h27;audio_h28;audio_h29;audio_h30;...
           audio_h31;audio_h32;audio_h33;audio_h34;audio_h35;...
           audio_h36;audio_h37;audio_h38;audio_h39;audio_h40;...
           audio_h41;audio_h42;audio_h43;audio_h44;audio_h45;...
           audio_h46;audio_h47;audio_h48;audio_h49;audio_h50];
       
audio_r = [audio_r1;audio_r2;audio_r3;audio_r4;audio_r5;...
           audio_r6;audio_r7;audio_r8;audio_r9;audio_r10;...
           audio_r11;audio_r12;audio_r13;audio_r14;audio_r15;...
           audio_r16;audio_r17;audio_r18;audio_r19;audio_r20;...
           audio_r21;audio_r22;audio_r23;audio_r24;audio_r25;...
           audio_r26;audio_r27;audio_r28;audio_r29;audio_r30;...
           audio_r31;audio_r32;audio_r33;audio_r34;audio_r35;...
           audio_r36;audio_r37;audio_r38;audio_r39;audio_r40;...
           audio_r41;audio_r42;audio_r43;audio_r44;audio_r45;...
           audio_r46;audio_r47;audio_r48;audio_r49;audio_r50];

end
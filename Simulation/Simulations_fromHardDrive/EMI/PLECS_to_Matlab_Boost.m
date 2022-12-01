clc
close all
clear all




FileName = 'data_6Level_FCML.csv';
s1 = xlsread(FileName);
f_FCML = s1(1:10001,1);

CM_FCML = s1(1:10001,2); 
DM_FCML = s1(1:10001,3);

FileName = 'data_2Level_Boost.csv';
s1 = xlsread(FileName);
f_Boost = s1(1:10001,1);

CM_Boost = s1(1:10001,2); 
DM_Boost = s1(1:10001,3);

%%
close all
clc 

figure
hold on
loglog(f_FCML,CM_FCML);
loglog(f_Boost,CM_Boost)
ylabel('Common Mode dBuV')
xlabel('Frequency [Hz]')
legend('6-Level FCML','Boost')
title('Common Mode EMI FCML vs. Boost')

figure
hold on
loglog(f_FCML,DM_FCML);
loglog(f_Boost,DM_Boost)
ylabel('Differential Mode dBuV')
xlabel('Frequency [Hz]')
legend('6-Level FCML','Boost')
title('Differential Mode EMI FCML vs. Boost')








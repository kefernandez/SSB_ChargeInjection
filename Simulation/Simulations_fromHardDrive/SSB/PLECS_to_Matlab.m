clc
close all
clear all




FileName = 'dataCI_SSB_1500W_v2.csv';
s1 = xlsread(FileName);
t_ci = s1(1:86024,1);
t_ci_offset = ones(86024,1)*t_ci(1,1);

t_ci = (t_ci - t_ci_offset)*1e3;

clear t_ci_offset;
%clear ts;
%t = s1(1:86024,1);
vc1_ci = s1(1:86024,2); 
vc2_ci = s1(1:86024,3); 
vab_ci = s1(1:86024,4);
%ilci= s1(1:86024,4);
idc_ci = s1(1:86024,6);
%ic2 = s1(1:86024,9);
vbus_ci = s1(1:86024,5);


FileName = 'dataSSB_v3.csv';
s1 = xlsread(FileName);
t = s1(1:82825,1);
t_offset = ones(82825,1)*t(1,1);

t = (t - t_offset)*1e3;

clear t_offset;
%clear ts;
%t = s1(1:86024,1);
vc1 = s1(1:82825,2); 
vc2 = s1(1:82825,3); 
vab = s1(1:82825,4);
%ilci= s1(1:86024,4);
idc = s1(1:82825,6);
%ic2 = s1(1:86024,9);
vbus = s1(1:82825,5);

%%

close all
clc 

figure 
plot (t, idc,'LineWidth', 2);
hold on
plot (t_ci, idc_ci,'LineWidth', 2);
legend('Traditional','Charge Injection')
xlim([0, t(82825,1)]);
ylim([3.4, 4.1]);
ylabel('$I_{In}$ (A)')
xlabel('Time (ms)');
set_figure_style(2);
resize_figure(2,.6);


%%
%close all
%clc 

figure
subplot(5,1,1); 
plot (t, idc,'LineWidth', 1);
xlim([0, t(82825,1)]);
ylim([ 3.49, 4.0])
ylabel('$I_{In}$ (A)')


subplot(5,1,2); 
plot (t, vbus,'LineWidth', 1);
xlim([0, t(82825,1)]);
ylim([ 397.4, 402.6])
ylabel('$V_{Bus}$ (V)')


subplot(5,1,3);
plot (t, vc1, 'LineWidth', 1);
xlim([0, t(82825,1)]);
ylim([ 330, 470])
ylabel('$V_{C1}$ (V)')


subplot(5,1,4); 
plot (t, vc2,'LineWidth', 1);
xlim([0, t(82825,1)]);
ylim([ 58, 75])
ylabel('$V_{C2}$ (V)')

subplot(5,1,5); 
plot (t, vab,'LineWidth', 1);
xlim([0, t(82825,1)]);
ylim([ -70, 70])
ylabel('$V_{ab}$ (V)')
xlabel('Time (ms)');
set_figure_style(2);
resize_figure(2,.6);

%%
close all
%clc 

figure
subplot(5,1,1); 
plot (t_ci, idc_ci,'LineWidth', 1);
xlim([0, t_ci(86024,1)]);
ylim([ 3.49, 4.0])
ylabel('$I_{In}$ (A)')

subplot(5,1,2); 
plot (t_ci, vbus_ci,'LineWidth', 1);
xlim([0, t_ci(86024,1)]);
ylim([ 397.4, 402.6])
ylabel('$V_{Bus}$ (V)')

subplot(5,1,3);
plot (t_ci, vc1_ci, 'LineWidth', 1);
xlim([0, t_ci(86024,1)]);
ylim([ 330, 470])
ylabel('$V_{C1}$ (V)')

subplot(5,1,4); 
plot (t_ci, vc2_ci,'LineWidth', 1);
xlim([0, t_ci(86024,1)]);
ylim([ 58, 75])
ylabel('$V_{C2}$ (V)')

subplot(5,1,5); 
plot (t_ci, vab_ci,'LineWidth', 1);
xlim([0, t_ci(86024,1)]);
ylim([ -70, 70])
ylabel('$V_{ab}$ (V)')
xlabel('Time (ms)');
set_figure_style(2);
resize_figure(2,.6);







%%
close all
clc

figure
subplot(6,1,1);
plot (t, S1_S4, 'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$S_{1}$, $S_{4}$ on')

subplot(6,1,2); 
plot (t, S3_S4,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$S_{3}$, $S_{4}$ on')

subplot(6,1,3); 
plot (t, Sci,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$S_{ci}$ on')

subplot(6,1,4); 
plot (t, iLci,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$i_{Lci}$ (A)')

subplot(6,1,5); 
plot (t, ic2,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$i_{C2}$ (A)')


subplot(6,1,6); 
plot (t, iab,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$i_{Lf1}$ (A)')
xlabel('Time ($\mu$s)');

set_figure_style(2);
resize_figure(2,.6);


%%
close all
clc 

figure
subplot(5,1,1);
plot (t, S1, 'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$S_{1}$, $S_{4}$ on')
h=gca; h.XAxis.TickLength = [0 0];
subplot(5,1,2); 
plot (t, Sci,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$S_{ci}$ on')
h=gca; h.XAxis.TickLength = [0 0];
subplot(5,1,3); 
plot (t, ilci,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$i_{Lci}$ (A)')
h=gca; h.XAxis.TickLength = [0 0];
subplot(5,1,4); 
plot (t, ic2,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$i_{C2}$ (A)')
h=gca; h.XAxis.TickLength = [0 0];

subplot(5,1,5); 
plot (t, iab,'LineWidth', 1);
xlim([0, t(86024,1)]);
ylabel('$i_{Lf1}$ (A)')
h=gca; h.XAxis.TickLength = [0 0];


set_figure_style(2);
resize_figure(2,.6);



%%
close all
clc 

figure
plot (t, vc1,'-y','LineWidth', 1);
hold on
plot (t, vc2,'-g','LineWidth', 1);
hold on
plot (t, vab,'-b','LineWidth', 1);
hold on 
plot (t, vbus,'-r','LineWidth', 1);
xlabel('Time (ms)');
xlim([0, t(86024,1)]);
ylim([-80, 480]);
ylabel('Voltage (V)')
legend('$V_{C1}$','$V_{C2}$','$V_{ab}$', '$V_{Bus}$') 

set_figure_style(2);
resize_figure(2,.6);






%%
close all
clc 

figure
yyaxis left
plot (t, vc2,'-g','LineWidth', 4);
hold on 
plot (t, vab,'-b','LineWidth', 4);
ylabel('Voltage (V)') 

yyaxis right
plot (t, ilci,'-r','LineWidth', 4);
legend('$V_{C2}$','$V_{ab}$','$I_{Lci}$') 
xlim([0, t(86024,1)]);
xlabel('Time (s)')
ylabel('Current (A)')
ylim([0, 10]);


set_figure_style(2);
resize_figure(2,.6);

%%
figure
plot (t, i2,'-','LineWidth', 4);
hold on 
plot (t, i1,'-','LineWidth', 4);
legend('$I_{1}$','$I_{2}$')
xlim([0, t(5000,1)+.00]);
xlabel('Time (s)')
ylabel('Current (A)')
set_figure_style(2);
resize_figure(2,.6);

figure
plot (t, p2,'-','LineWidth', 4);
hold on 
plot (t, p1,'-','LineWidth', 4);
legend('$P_{1}$','$P_{2}$')
xlim([0, t(5000,1)+.00]);
xlabel('Time (s)')
ylabel('Power (W)')
set_figure_style(2);
resize_figure(2,.6);
%yyaxis right
%plot (t, ILci,'-r');


%legend('$V_{1}$','$V_{2}$', '$I_{1}$','$I_{2}$','$P_{1}$', '$P_{2}$')
%xlabel('Time (s)')
%yyaxis left
%ylabel('Voltage, Current, Power Amplitude')
%yyaxis right
%ylim([0, 10]);
%ylabel('Current (A)')
%left_color = 'b';
%right_color = 'r';
%set(figure,'defaultAxesColorOrder',[left_color; right_color]);
set_figure_style(2);
resize_figure(2,.6);









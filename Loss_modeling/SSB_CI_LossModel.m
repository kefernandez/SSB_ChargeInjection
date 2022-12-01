clear all
close all 
clc

%Parameters
v_logic = 6.5;
v_dc = 400;
P = 1500;
i_dc = P/v_dc; 
i_rms = i_dc/sqrt(2); 
fsw = 160e3; 
rds_on_epc2033 = 5e-3; 
rds_on_gs66506t = 67e-3;
Vfwd_MURS160T3G = 1.25;
Coss_epc2033 = 550e-12; %From data sheet curve for Vds = 75 V 
Coss_gs66506t = 49e-12;
Qg_epc2033 = 12e-9; %From epc2033 data sheet, assumin Vgs = 5 V
Qg_gs66506t = 4.5e-9;
V_g = 5;
V_logic = 6.5;
Isink_epc2033 = 4.8; %at 30 degrees C, from si8274gb1-im1 datasheet
Isink_gs66506t = Isink_epc2033;
Isource_epc2033 = 1.8; %at 30 degrees C, from si8274gb1-im1 datasheet
Ir_MURS160T3G = 0.02e-6; %reverse current of MURS160T3G at Vr = 100 V with Tj slightly warmer than room temp
trr_MURS160T3G = 50e-9;
Vrr_MURS160T3G  = 100;
Vds_ssb = 72;  %average Vds of S1 - S4, equal to Vc2
Ip_adum = 104e-3;
V_adum = 5;
P_adum = 150e-3; 
%eff = 0.9942; 
eff_adum = P_adum/(Ip_adum*V_adum);

L_dcr_XAL7070_473 = 84.41e-3;
L_dcr_MSS1210_104 = 0.106e-3;



FileName = 'data_OverlapLossSSB_CI_1500W.csv'; %data of S1 - S4 currents with Vc2 in one 120 Hz period
s1 = xlsread(FileName);
t = s1(1:42930,1);
t_offset = ones(42930,1)*t(1,1);

t = (t - t_offset)*1e6;

clear t_offset;
%clear ts;
t = s1(1:42930,1);
Is1 = s1(1:42930,2); 
Is2 = s1(1:42930,3);
Is3 = s1(1:42930,4);
Is4 = s1(1:42930,5);
Vc2 = s1(1:42930,7);
Vsci = s1(1:42930,8);
Isci = s1(1:42930,9);
Vdci = s1(1:42930,10);
Idci = s1(1:42930,11);
Ilf_top = s1(1:42930,12);
Ilf_bot = s1(1:42930,13);
Ilci = s1(1:42930,14);

%% Coss Losses 0.5*fsw*Coss*Vds^2

%ssb
Pcoss_ssb = 0.5*4*(0.5*fsw*Coss_epc2033*Vds_ssb*Vds_ssb); %0.5*fsw*Coss*Vds^2 x4 switches, 0.5* because each switch on switches for half the 120 Hz period

%charge injection
Pcoss_ci = [];
for i = 1:length(Isci)
    if i ~= 1  
        if Isci(i) == 0 && Isci(i-1) ~= 0 %value of Is3 before turn off
            Pcoss_ci = [Pcoss_ci, 0.5*fsw*Coss_gs66506t*Vsci(i)*Vsci(i)]; %obtain Coss vector of different Coss power losses each switching cycle
            
        end 
    end
end
Pcoss_ci_avg = (sum(Pcoss_ci)/length(Pcoss_ci))*0.5; %take average of Coss, and then *0.5 since Sci is only active half of 120 Hz period

Pcoss = Pcoss_ci_avg + Pcoss_ssb;
%% Overlap losses 0.5*I*Vds*(toff+ton)

%ssb
tsw_on = Qg_epc2033/Isource_epc2033;
tsw_off = Qg_epc2033/Isink_epc2033;

Ps1_turn_off = [];
Ps2_turn_off = [];
Ps3_turn_off = [];
Ps4_turn_off = [];


Ps1_turn_on = [];
Ps2_turn_on = [];
Ps3_turn_on = [];
Ps4_turn_on = [];



for i = 1:length(Is1)
    if i ~= 1   
        
        %turn off currents and voltages
        if Is1(i) == 0 && Is1(i-1) ~= 0 %value of Is1 before turn off
            Ps1_turn_off = [Ps1_turn_off, 0.5*Is1(i-1)*Vc2(i)*tsw_off*fsw];
            %Is1_turn_off = [Is1_turn_off, Is1(i-1)]; 
            %Vs1_turn_off = [Vs1_turn_off, Vc2(i)];
        end
        if Is2(i) == 0 && Is2(i-1) ~= 0 %value of Is2 before turn off
            Ps2_turn_off = [Ps2_turn_off, 0.5*Is2(i-1)*Vc2(i)*tsw_off*fsw];
            
            %Is2_turn_off = [Is2_turn_off, Is2(i-1)]; 
            %Vs2_turn_off = [Vs2_turn_off, Vs2(i-1)];
        end
        if Is3(i) == 0 && Is3(i-1) ~= 0 %value of Is3 before turn off
            Ps3_turn_off = [Ps3_turn_off, 0.5*Is3(i-1)*Vc2(i)*tsw_off*fsw];
            
            %Is3_turn_off = [Is3_turn_off, Is3(i-1)]; 
            %Vs3_turn_off = [Vs3_turn_off, Vs3(i-1)];
        end 
        if Is4(i) == 0 && Is4(i-1) ~= 0 %value of Is1 before turn off
            Ps4_turn_off = [Ps4_turn_off, 0.5*Is4(i-1)*Vc2(i)*tsw_off*fsw];
            
            %Is4_turn_off = [Is4_turn_off, Is4(i-1)];
            %Vs4_turn_off = [Vs4_turn_off, Vs4(i-1)];
        end   
         
        %turn on and voltages
        if Is1(i) ~= 0 && Is1(i-1) == 0 %value of Is1 before turn on
            Ps1_turn_on = [Ps1_turn_on, 0.5*Is1(i)*Vc2(i-1)*tsw_on*fsw];
            %Is1_turn_on = [Is1_turn_on, Is1(i)]; 
            %Vs1_turn_on = [Vs1_turn_on, Vc2(i-1)];
             
        end
        if Is2(i) ~= 0 && Is2(i-1) == 0 %value of Is2 before turn on
            Ps2_turn_on = [Ps2_turn_on, 0.5*Is2(i)*Vc2(i-1)*tsw_on*fsw];
            %Is2_turn_on = [Is2_turn_on, Is2(i)]; 
        end
        if Is3(i) ~= 0 && Is3(i-1) == 0 %value of Is3 before turn on
            Ps3_turn_on = [Ps3_turn_on, 0.5*Is3(i)*Vc2(i-1)*tsw_on*fsw];
            %Is3_turn_on = [Is3_turn_on, Is3(i)]; 
        end 
        if Is4(i) ~= 0 && Is4(i-1) == 0 %value of Is4 at turn on
            Ps4_turn_on = [Ps4_turn_on, 0.5*Is4(i)*Vc2(i-1)*tsw_on*fsw];
            %Is4_turn_on = [Is4_turn_on, Is4(i)]; 
        end         
        
        
    end
end

Ps1_turn_off = abs(Ps1_turn_off);
Ps2_turn_off = abs(Ps2_turn_off);
Ps3_turn_off = abs(Ps3_turn_off);
Ps4_turn_off = abs(Ps4_turn_off);

Ps1_turn_on = abs(Ps1_turn_on);
Ps2_turn_on = abs(Ps2_turn_on);
Ps3_turn_on = abs(Ps3_turn_on);
Ps4_turn_on = abs(Ps4_turn_on);

P_overlap_ssb = 0.5*(sum(Ps1_turn_off)/length(Ps1_turn_off) + sum(Ps1_turn_on)/length(Ps1_turn_on))... 
+ 0.5*(sum(Ps2_turn_off)/length(Ps2_turn_off) + sum(Ps2_turn_on)/length(Ps2_turn_on))...  %S2 overlap losses
+ 0.5*(sum(Ps3_turn_off)/length(Ps3_turn_off) + sum(Ps3_turn_on)/length(Ps3_turn_on))... %S3 overlap losses
+ 0.5*(sum(Ps4_turn_off)/length(Ps4_turn_off) + sum(Ps4_turn_on)/length(Ps4_turn_on)); %S4 overlap losses

%Charge Injection
%Sci only has turn-off loss, Dci has turn-on loss

Psci_turn_off = [];
tsw_off_ci = Qg_gs66506t/Isink_gs66506t;
for i = 1:length(Isci)
    if i ~= 1  
        if Isci(i) == 0 && Isci(i-1) ~= 0 %value of Isci before turn off
             Psci_turn_off = [Psci_turn_off, 0.5*Isci(i-1)*Vsci(i)*tsw_off_ci*fsw];  
        end 
    end
end

Psci_turn_off = abs(Psci_turn_off);
P_overlap_ci = 0.5*(sum(Psci_turn_off)/length(Psci_turn_off));

P_rr_dci = 0.5*Ir_MURS160T3G*Vrr_MURS160T3G*trr_MURS160T3G*fsw; %Vrr*Irr*trr/Tsw (*0.5 because only on for half 120 Hz period)


P_overlap = P_overlap_ssb + P_overlap_ci + P_rr_dci;
clearvars Ps1_turn_off Ps2_turn_off Ps3_turn_off Ps4_turn_off Ps1_turn_on Ps2_turn_on Ps3_turn_on Ps4_turn_on Psci_turn_off
%% Conduction Losses Irms^2*rds_on

P_cond_ssb = rds_on_epc2033*(rms(Is1)^2 + rms(Is2)^2 +rms(Is3)^2 +rms(Is4)^2);
P_cond_sci = rds_on_gs66506t*(rms(Isci)^2);
P_cond_dci = Vfwd_MURS160T3G*mean(Idci);

P_cond = P_cond_ssb + P_cond_sci + P_cond_dci;

%% Gate drive 

P_gd_ssb = 4*V_g*Qg_epc2033*fsw*0.5; %Energy*fsw to turn on 4xswitch. x0.5 since active for only half 120 Hz period
P_gd_ssb = P_gd_ssb*(1+(1-eff_adum))*(1+(1-V_g/V_logic)); 

P_gd_ci = V_g*Qg_gs66506t*fsw*0.5; %Energy*fsw to turn on switch. x0.5 since active for only half 120 Hz period
P_gd_ci = P_gd_ci*(1+(1-eff_adum))*(1+(1-V_g/V_logic)); 

P_gd = P_gd_ssb+P_gd_ci;

%% Inductor Losses 

%DCR Irms^2*rds_on

P_dcr_ssb = L_dcr_XAL7070_473*((rms(Ilf_top))^2 + (rms(Ilf_bot))^2);
P_dcr_ci = L_dcr_MSS1210_104*((rms(Ilci))^2);

%core losses from coil craft
P_core_mss1210 = 186e-3*0.5; %160kHz waveform with 1 A pk-pk riple, Only on half 120 Hz,
P_core_xal7070 = 2*(16e-3 + 0.5*557e-3 + 0.5*138e-3); %120 Hz ripple, 1.3A ripple for half period, 0.7A ripple for half

P_dcr = P_dcr_ssb + P_dcr_ci;
P_core = P_core_xal7070 + P_core_mss1210;

P_ind = P_dcr_ssb + P_dcr_ci + P_core_mss1210 + P_core_xal7070;

%% PCB Losses

%ssb
%traces
vdc_c1 = 0.00145;
c1_wire = 0.03831;
c1_lf = 0.00294;
lf_cell = 0.00131;
sw_cell = 2*(0.000961+0.000175);
cell_c2p = 0.00110 + 0.00105;
c2m_cell = 0.000694;
c2_wire = c1_wire;
cell_gnd = 0.000607;


%vias
vdc_contact = 2*0.000193;
banana = 4*.01;
sw_cell_via = 32*0.000208 + 10*0.000325;
sw_cell_c2_via = 16*0.000456;
cell_gnd_via = 0.000456;
gnd_contact = vdc_contact;


res_ssb = vdc_c1 + c1_wire + c1_lf + lf_cell + sw_cell + cell_c2p + c2_wire + c2m_cell + cell_gnd;
via_ssb = vdc_contact + banana + sw_cell_via + sw_cell_c2_via+ banana + cell_gnd_via + gnd_contact;
res_ssb = res_ssb + via_ssb;

%charge injection
%traces
vdc_sci = 0.000946;
sci_lci = 0.00171;
lci_c2 = 0.00125 + cell_c2p;

%vias
vdc_via = 0.0000622;


res_ci = vdc_c1 + vdc_sci + sci_lci + lci_c2 + c2_wire + c2m_cell + sw_cell*0.5 + cell_gnd;
via_ci = vdc_contact + vdc_via + sw_cell_c2_via + banana + 0.5*sw_cell_via + cell_gnd_via + gnd_contact;
res_ci = res_ci + via_ci;

P_pcb = (i_rms^2)*res_ssb + (rms(Ilci)^2)*res_ci;


%% Total Loss
P_total = Pcoss + P_overlap + P_cond + P_ind + P_gd + P_pcb;


loss_vector = [(Pcoss+P_overlap), P_cond, P_dcr, P_core, P_gd, P_pcb];
labels = {'Hard Switching','Switch Conduction','Inductor DCR', 'Inductor Core', 'Gate Drive', 'PCB' };

figure
pie(loss_vector)
lgd = legend(labels);
%lgd.Layout.Tile = 'east';
set_figure_style(2);
%resize_figure(2,.6);

clear
close all
clc

kRC=2;

%% VA rating
Vin=48; Vout=1; IL=30;
m_max=0.5/2*Vin/Vout;
m=2:0.1:m_max; % conversion of the second stage
VA=zeros(1,length(m));

for ii=1:length(m)
    Iout=IL*2*m(ii);
    D=2*m(ii)/Vin*Vout;
    VA(ii)=VA(ii)+2*(Vin/2)*(IL*sqrt(D));
    VA(ii)=VA(ii)+1*(Vin-Vin/2/m(ii)*(m(ii)-1))*(IL*sqrt(D));
    VA(ii)=VA(ii)+1*(Vin/2/m(ii)*(m(ii)-1))*(IL*sqrt(D));
    VA(ii)=VA(ii)+(2*m(ii)-2)*(Vin/2/m(ii)*2)*(IL*sqrt(D));
    VA(ii)=VA(ii)+(2*m(ii)-2)*(Vin/2/m(ii))*(IL*sqrt(1-2*D+2^2*D));
    VA(ii)=VA(ii)+2*(Vin/2/m(ii))*(IL*sqrt(1-D));
    VA(ii)=VA(ii)/Vout/Iout;
end

figure(1);
plot(m,VA,'LineWidth',1);
xlabel('Second-stage conversion ratio','FontName','Times New Roman','fontsize',10);
ylabel('Normalized VA rating','FontName','Times New Roman','fontsize',10);

% Set figure format
addpath('toolCodePackage');
scale = 1.5;
scale_text = scale*1.05;
ratio = 0.618;
set_figure_style(scale_text);
resize_figure(scale,ratio);

%% Full-Load Efficiency (With Conduction Loss Only)
Vin=48; Vout=1; IL=30;
m_max=0.5/2*Vin/Vout;
m=2:0.1:m_max; % conversion of the second stage
Pcond=zeros(1,length(m));
Eff_cond=Pcond;

Rdson_25V=0.65e-3*kRC;  Rdson_40V=1.5e-3*kRC;
L0=300; % nH, Dickson^2
rSC0=9; % SC stage conversion ration, Dickson^2
rTotal=Vin/Vout;
ESR_L_per_nH=0.48e-3/L0;

for ii=1:length(m)
    Iout=IL*2*m(ii);
    D=2*m(ii)/Vin*Vout;
    Pcond(ii)=Pcond(ii)+2*Rdson_40V*(IL*sqrt(D))^2;
    Pcond(ii)=Pcond(ii)+1*Rdson_40V*(IL*sqrt(D))^2;
    Pcond(ii)=Pcond(ii)+1*Rdson_40V*(IL*sqrt(D))^2;
    Pcond(ii)=Pcond(ii)+(2*m(ii)-2)*Rdson_25V*(IL*sqrt(D))^2;
    Pcond(ii)=Pcond(ii)+(2*m(ii)-2)*Rdson_25V/2*(IL*sqrt(1-2*D+2^2*D))^2;
    Pcond(ii)=Pcond(ii)+2*Rdson_25V/2*(IL*sqrt(1-D))^2;

    rSC=2*m(ii);
    L=L0/(1-rSC0/rTotal)*(1-rSC/rTotal);
    ESR_L=ESR_L_per_nH*L;
    Pcond(ii)=Pcond(ii)+2*m(ii)*ESR_L*IL^2;

    Eff_cond(ii)=Vout*Iout./(Pcond(ii)+Vout*Iout);
    Eff_cond(ii)=Eff_cond(ii)*100;
end

figure(2);
plot(m,Eff_cond,'LineWidth',1);
xlabel('Second-stage conversion ratio','FontName','Times New Roman','fontsize',10);
ylabel('Full-Load Efficiency ($\%$)','FontName','Times New Roman','fontsize',10);

% Set figure format
addpath('toolCodePackage');
scale = 1.5;
scale_text = scale*1.05;
ratio = 0.618;
set_figure_style(scale_text);
resize_figure(scale,ratio);

%% Peak Efficiency (With Switching Loss Only)
Vin=48; Vout=1; IL=30;
m_max=0.5/2*Vin/Vout;
m=2:0.1:m_max; % conversion of the second stage
PCoss=zeros(1,length(m));
POverlap=zeros(1,length(m));
PSW=zeros(1,length(m));
PDriver=zeros(1,length(m));
PLp=zeros(1,length(m));
Eff_SW=zeros(1,length(m));

Qoss_25V=41.3e-9/kRC;   % @ 12V
Qoss_40V=45e-9/kRC;     % @ 20V
Coss_25V=Qoss_25V/12;  Coss_40V=Qoss_40V/20;

Qsw_25V=9e-9/kRC;       % @ 12V
Qsw_40V=8e-9/kRC;       % @ 20V
Ig=2;

Qg_25V=38e-9/kRC;       % @ 7V
Qg_40V=28e-9/kRC;       % @ 7V
VDrive=7;

Lp=1e-9;

fsw=300e3;  % 300kHz

for ii=1:length(m)
    Iout=IL*2*m(ii);
    D=2*m(ii)/Vin*Vout;
    PCoss(ii)=PCoss(ii)+2*Coss_40V*(Vin/2)^2/2;
    PCoss(ii)=PCoss(ii)+1*Coss_40V*(Vin-Vin/2/m(ii)*(m(ii)-1))^2/2;
    PCoss(ii)=PCoss(ii)+1*Coss_40V*(Vin/2/m(ii)*(m(ii)-1))^2/2;
    PCoss(ii)=PCoss(ii)+(2*m(ii)-2)*Coss_25V*(Vin/2/m(ii)*2)^2/2;
    PCoss(ii)=PCoss(ii)+(2*m(ii)-2)*(Coss_25V*2)*(Vin/2/m(ii))^2/2;
    PCoss(ii)=PCoss(ii)+2*(Coss_25V*2)*(Vin/2/m(ii))^2/2;

%     PLp(ii)=PLp(ii)+2*Lp*IL^2/2;
%     PLp(ii)=PLp(ii)+1*Lp*IL^2/2;
%     PLp(ii)=PLp(ii)+1*Lp*IL^2/2;
%     PLp(ii)=PLp(ii)+(2*m(ii)-2)*Lp*IL^2/2;
%     PLp(ii)=PLp(ii)+(2*m(ii)-2)*Lp*(2*IL)^2/2;
%     PLp(ii)=PLp(ii)+2*Lp*(2*IL)^2/2;

    POverlap(ii)=POverlap(ii)+2*(Vin/2)*IL*(2*Qsw_40V/Ig)/2;
    POverlap(ii)=POverlap(ii)+1*(Vin-Vin/2/m(ii)*(m(ii)-1))*IL*(2*Qsw_40V/Ig)/2;
    POverlap(ii)=POverlap(ii)+1*(Vin/2/m(ii)*(m(ii)-1))*IL*(2*Qsw_40V/Ig)/2;
    POverlap(ii)=POverlap(ii)+(2*m(ii)-2)*(Vin/2/m(ii)*2)*IL*(2*Qsw_25V/Ig)/2;
    POverlap(ii)=POverlap(ii)+(2*m(ii)-2)*(Vin/2/m(ii))*(2*IL)*(2*Qsw_25V/Ig)/2;
    POverlap(ii)=POverlap(ii)+2*(Vin/2/m(ii))*(2*IL)*(2*Qsw_25V/Ig)/2;

    PDriver(ii)=(Qg_40V*4+Qg_25V*((2*m(ii)-2)+(2*m(ii)-2)*2+2*2))*VDrive;

    Eff_SW(ii)=Vout*Iout./((PCoss(ii)+PLp(ii)/9+POverlap(ii)/3+PDriver(ii))*fsw+Vout*Iout);
    Eff_SW(ii)=Eff_SW(ii)*100;
end

figure(3);
plot(m,Eff_SW,'LineWidth',1);
xlabel('Second-stage conversion ratio','FontName','Times New Roman','fontsize',10);
ylabel('Peak Efficiency ($\%$)','FontName','Times New Roman','fontsize',10);

% Set figure format
addpath('toolCodePackage');
scale = 1.5;
scale_text = scale*1.05;
ratio = 0.618;
set_figure_style(scale_text);
resize_figure(scale,ratio);

%% Efficiency (With Both Conduction and Coss Losses)
Vin=48; Vout=1; IL=30;
m_max=0.5/2*Vin/Vout;
m=2:0.1:m_max; % conversion of the second stage
Eff_peak=2*m*Vout*IL./((PCoss+PLp/9+POverlap/3+PDriver)*fsw+Pcond/9+2*m*Vout*IL);
Eff_fullLoad=2*m*Vout*IL./((PCoss+PLp+POverlap+PDriver)*fsw+Pcond+2*m*Vout*IL);
Eff_peak=Eff_peak*100;
Eff_fullLoad=Eff_fullLoad*100;

figure(4);
plot(m,Eff_peak,m,Eff_fullLoad,'LineWidth',1);
xlabel('Second-stage conversion ratio','FontName','Times New Roman','fontsize',10);
ylabel('Efficiency ($\%$)','FontName','Times New Roman','fontsize',10);
legend('Peak Efficiency','Full-Load Efficiency','Location','best');

% Set figure format
addpath('toolCodePackage');
scale = 1.5;
scale_text = scale*1.05;
ratio = 0.618;
set_figure_style(scale_text);
resize_figure(scale,ratio);
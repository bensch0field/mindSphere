BMS = bms_gen();
BMS_norm = data_normalisation([BMS.humidity1,BMS.humidity2,BMS.co2]);

AHU = ahu_gen();

%{
figure
plot(BMS_norm(:,1))
hold on
plot(BMS_norm(:,2))
hold on
%}
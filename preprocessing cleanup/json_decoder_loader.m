BMS = bms_gen();
num = 16478;
BMS_norm = data_normalisation([BMS.humidity1(1:num),BMS.humidity2(1:num),BMS.co2(1:num)]);
figure
plot(BMS_norm(:,:))
legend('Humidity 1','Humidity 2','CO2')

AHU = ahu_gen();
AHU_norm = data_normalisation([AHU.driver,AHU.feedback,AHU.frost_temp,AHU.supply_temp]);
figure
plot(AHU_norm(:,:))
legend('Driver','Feedback','Frost Temp','Supply Temp')

[X,pca_net,network]=nlpca(AHU_norm',4,'pre_pca','yes',...
    ... % 'pre_unit_variance','yes',... % not recommended for the star data
    ... %'units_per_layer'      ,[12, 8, 3, 8, 12]   ,... % optional (to reduce data-dim from 19 to 12)
    'weight_initialization','set_weights_randomly',...
    'weight_decay_coefficient',0.01,...
    'max_iteration',1000,...
    'plotting','yes');



function BMS = bms_gen()
val = json_decoder('5s res sensor_id=BMS-L1O14S31&start=2017-03-20T00_00_00&end=2017-03-20T23_59_59.json');
data = val.values;
data = struct2cell(data)';
BMS.humidity1 = str2double(data(:,1));

val = json_decoder('5s res sensor_id=BMS-L1O14S32&start=2017-03-20T00_00_00&end=2017-03-20T23_59_59.json');
data = val.values;
data = struct2cell(data)';

BMS.humidity2 = str2double(data(:,1));

val = json_decoder('5s res sensor_id=BMS-L1O14S33&start=2017-03-20T00_00_00&end=2017-03-20T23_59_59.json');
data = val.values;
data = struct2cell(data)';
BMS.co2 = str2double(data(:,2));
end

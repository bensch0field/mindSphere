function AHU = ahu_gen()
val = json_decoder('AHU06 Heating Coil.json');
data = val.values;
data = struct2cell(data)';
AHU.driver = str2double(data(:,3));

val = json_decoder('AHU06 Heating Coil Feedback.json');
data = val.values;
data = struct2cell(data)';
AHU.feedback = str2double(data(:,3));

val = json_decoder('AHU06 Off Frost Temp.json');
data = val.values;
data = struct2cell(data)';
AHU.frost_temp = str2double(data(:,3));

val = json_decoder('AHU06 Supply Temp.json');
data = val.values;
data = struct2cell(data)';
AHU.supply_temp = str2double(data(:,3));
end

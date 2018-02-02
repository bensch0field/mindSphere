val = json_decoder('AHU06 Supply Temp.json');
data = val.values;
c = struct2cell(data)'
%plot(str2double(val.values.value));


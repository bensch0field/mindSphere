val = json_decoder('AHU06 Supply Temp.json');
data = val.values;
c = struct2cell(data)'
%c(:,3) = str2double(c(:,3));
a = str2double(c(:,3))
%plot(str2double(val.values.value));


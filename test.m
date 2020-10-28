% x = inputdlg({'Name','Telephone','Account'},...
%               'Customer', [1 50; 1 12; 1 7]);

% LastName = {'Smith';'Johnson';'Williams';'Jones';'Brown'};
LastName = input('nama 5')
Age = [38;43;38;40;49];
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];

A = table(Age,Height,Weight,BloodPressure,'RowNames',LastName)
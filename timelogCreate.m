function timelogCreate = timelog(date, time) 
%Please provide time as a string in format "hh:mm:ss" for the desired start
%time
%%Provide date as a string in the desired format

%% Create Array for timelog
a = cell(14,5)

%% Create header
a{1,1} = 'date visited';
a{1,2} = 'segment';
a{1,3} = 'condition';
a{1,4} = 'start';
a{1,5} = 'end';

% Create date column
a{2,1} = date;
a{3,1} = date;
a{4,1} = date;
a{5,1} = date;
a{6,1} = date;
a{7,1} = date;
a{8,1} = date;
a{9,1} = date;
a{10,1} = date;
a{11,1} = date;
a{12,1} = date;
a{13,1} = date;
a{14,1} = date;

%create segment column

for z = 1:13
    a{z+1,2} = z;
end
% Create condition column

a{2,3} = 'prestart';
a{3,3} = 'startNirs';
a{4,3} = 'baseline';
a{5,3} = 'salivainstruct';
a{6,3} = 'saliva2';
a{7,3} = 'legoinstruct';
a{8,3} = 'legotask';
a{9,3} = 'salivaInstruct';
a{10,3} = 'saliva3';
a{11,3} = 'rest1';
a{12,3} = 'saliva4';
a{13,3} = 'rest2';
a{14,3}= 'saliva5';

% Make start/end time columms
a{3,4} = time;
newTime = addTime(time, 10);
a{3,5}= newTime;
a{4,4} = newTime;
newTime = addTime(time, 130);
a{4,5}= newTime;
a{5,4} = newTime;
newTime = addTime(time, 220);
a{5,5}= newTime;
a{6,4} = newTime;
newTime = addTime(time, 340);
a{6,5}= newTime;
a{7,4} = newTime;
newTime = addTime(time, 460);
a{7,5}= newTime;
a{8,4} = newTime;
newTime = addTime(time, 761);
a{8,5}= newTime;
a{9,4} = newTime;
newTime = addTime(time, 821);
a{9,5}= newTime;
a{10,4} = newTime;
newTime = addTime(time, 941);
a{10,5}= newTime;
a{11,4} = newTime;
newTime = addTime(time, 1541);
a{11,5}= newTime;
a{12,4} = newTime;
newTime = addTime(time, 1661);
a{12,5}= newTime;
a{13,4} = newTime;
newTime = addTime(time, 2261);
a{13,5}= newTime;
a{14,4} = newTime;
newTime = addTime(time, 2381);
a{14,5}= newTime;

 a(2,:)=[] 
 timelogCreate = a;
end














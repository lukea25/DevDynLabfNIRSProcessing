function addTime = addTime(time, addTimeSeconds)

timeArray = strsplit(time, ':');
hour = str2num(timeArray{1});
minute = str2num(timeArray{2});
second = str2num(timeArray{3});
timeInSeconds = hour*60*60 + minute *60 + second;

%add desired time
timeInSeconds = timeInSeconds + addTimeSeconds;

%time in seconds to formatted hh:mm:ss function
minute = fix(timeInSeconds/60);
second = mod(timeInSeconds, 60);
hour = fix(minute/60);
minute = mod(minute, 60);

%convert back to string

timeString = int2str(hour);
timeString = append(timeString, ':');
timeString = append(timeString, int2str(minute));
timeString = append(timeString, ':');
timeString = append(timeString, int2str(second));

addTime = timeString;
end
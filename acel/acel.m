clear
clc
fileacel = dlmread("acel.txt",";");
filemag = dlmread("magn.txt",";");
timeacel = fileacel(:,1);
xacel = fileacel(:,2);
xacel = xacel*0.976;
yacel = fileacel(:,3);
yacel = yacel*0.976;
zacel = fileacel(:,4);
zacel = zacel*0.976;
timemag = filemag(:,1);
xmag = filemag(:,2);
ymag = filemag(:,3);
zmag = filemag(:,4);
plot(timeacel,xacel,timeacel,yacel,timeacel,zacel)
figure
plot(timeacel,xacel)
figure
plot(timeacel,yacel)
figure
plot(timeacel,zacel)
%figure
%plot(timemag,xmag)
%figure
%plot(timemag,ymag)
%figure
%plot(timemag,zmag)
%figure
%plot(timemag,xmag,timemag,ymag,timemag,zmag)

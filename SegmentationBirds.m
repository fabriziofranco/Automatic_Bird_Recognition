function [X,y,xP,umbral,ESPECTRO,f]=SegmentationBirds(fileName)
[X,Fs]=audioread(fileName);


unos = [1,1];
pico = max(abs(X));
tama = size(pico);
e = tama(2);
if(e == 1)
    X = X *(1/pico) ;
end
if(e == 2)
    X = X .*(unos/pico) ;
end



b=ones(1,10000);
a=1;
y=filter(b,a,abs(X));   
t=0:1/Fs:length(X)/Fs-1/Fs;
umbral=mean(y);
XD=zeros(length(y),1);
for i=1:length(y)
    if y(i)>=umbral
        XD(i)=300;
    else
        XD(i)=0;
    end
end
%plot(t,y)
%hold on
%plot(t,XD)
xP=XD.*X;
xP(xP==0)=[];
txP=0:1/Fs:length(xP)/Fs-1/Fs;
%figure
%plot(txP,xP)
%figure
%spectrogram(xP,128,120,128,Fs,'yaxis')
%colormap('hot')
%figure 
%periodogram(xP,[],20000)
[ESPECTRO,f]=periodogram(xP,[],20000);
%figure 
%plot(t,X)
end 

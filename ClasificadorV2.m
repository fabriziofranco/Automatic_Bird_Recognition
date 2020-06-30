function [ESPECTRO,EsPava,valores]=ClasificadorV2(fileName)
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


unos = [1,1];
pico = max(abs(ESPECTRO));
tama = size(pico);
e = tama(2);

if(e == 1)
    ESPECTRO = ESPECTRO *(1/pico) ;
end
if(e == 2)
    ESPECTRO = ESPECTRO .*(unos/pico) ;
end



b=ones(1,10000);
a=1;
y=filter(b,a,abs(X));   
umbral=mean(y);
XD=zeros(length(y),1);
for i=1:length(y)
    if y(i)>=umbral
        XD(i)=300;
    else
        XD(i)=0;
    end
end
xP=XD.*X;
xP(xP==0)=[];
[ESPECTRO]=periodogram(xP,[],20000);
ESPECTRO=10*log10(ESPECTRO);
[valores]=histcounts(ESPECTRO,15);
treshhold=valores(7)+valores(8);
if 2590>=treshhold
   EsPava=true;
else
   EsPava=false;
end
end

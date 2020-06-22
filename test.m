%{
clc, clear
[X,y,Filtrado,umbral,espectro,f]=SegmentationBirds('Pava1.mp3');
[X2,y2,Filtrado2,umbral2,espectro2,f2]=SegmentationBirds('Pava2.mp3');
[X3,y3,Filtrado3,umbral3,espectro3,f3]=SegmentationBirds('Pava3.mp3');
[X4,y4,Filtrado4,umbral4,espectro4,f4]=SegmentationBirds('Pava4.mp3');
[X5,y5,Filtrado5,umbral5,espectro5,f5]=SegmentationBirds('Pava5.mp3');


[X6,y6,Filtrado6,umbral6,espectro6,f6]=SegmentationBirds('Cortarramas1.mp3');
[X7,y7,Filtrado7,umbral7,espectro7,f7]=SegmentationBirds('Cortarramas2.mp3');
[X8,y8,Filtrado8,umbral8,espectro8,f8]=SegmentationBirds('Cortarramas3.mp3');
[X9,y9,Filtrado9,umbral9,espectro9,f9]=SegmentationBirds('Cortarramas4.mp3');
[X10,y10,Filtrado10,umbral10,espectro10,f10]=SegmentationBirds('Cortarramas5.mp3');


xx1=10*log10(espectro);
xx2=10*log10(espectro2);
xx3=10*log10(espectro3);
xx4=10*log10(espectro4);
xx5=10*log10(espectro5);

pava=(xx1+xx2+xx3+xx4+xx5)/5;



xx6=10*log10(espectro6);
xx7=10*log10(espectro7);
xx8=10*log10(espectro8);
xx9=10*log10(espectro9);
xx10=10*log10(espectro10);

ramas=(xx6+xx7+xx8+xx9+xx10)/5;

%}


figure
histogram(pava,5);
figure
histogram(ramas,5);


figure
boxplot(pava);
figure
boxplot(ramas);




  
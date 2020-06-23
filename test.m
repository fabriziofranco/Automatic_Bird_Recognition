%{
%clc, clear
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




%figure
%histogram(pava,6);
%figure
%histogram(ramas,6);
%[valores]=histcounts(pava,6);
%[valores2]=histcounts(ramas,6);





%{
figure
histogram(xx1,6);
figure
histogram(xx2,6);
figure
histogram(xx3,6);
figure
histogram(xx4,6);
figure
histogram(xx5,6);

figure
histogram(xx6,6);
figure
histogram(xx7,6);
figure
histogram(xx8,6);
figure
histogram(xx9,6);
figure
histogram(xx10,6);

%}

%}



[Espectro,EsPava,valores]=Clasificador('Pava1.mp3');
[Espectro2,EsPava2,valores2]=Clasificador('Pava2.mp3');
[Espectro3,EsPava3,valores3]=Clasificador('Pava3.mp3');
[Espectro4,EsPava4,valores4]=Clasificador('Pava4.mp3');
[Espectro5,EsPava5,valores5]=Clasificador('Pava5.mp3');



[Espectro6,EsPava6,valores6]=Clasificador('Cortarramas1.mp3');
[Espectro7,EsPava7,valores7]=Clasificador('Cortarramas2.mp3');
[Espectro8,EsPava8,valores8]=Clasificador('Cortarramas3.mp3');
[Espectro9,EsPava9,valores9]=Clasificador('Cortarramas4.mp3');
[Espectro10,EsPava_diez,valores_diez]=Clasificador('Cortarramas5.mp3');



[EspectroB,EsPavaB,valoresB]=Clasificador('B1.mp3');
[EspectroB2,EsPavaB2,valoresB2]=Clasificador('B2.mp3');
[EspectroB3,EsPavaB3,valoresB3]=Clasificador('B3.mp3');
[EspectroB4,EsPavaB4,valoresB4]=Clasificador('B4.mp3');


[EspectroCortaB,EsPavaCortaB,valoresCortaB]=Clasificador('CortaB.mp3');
[EspectroCortaB2,EsPavaCortaB2,valoresCortaB2]=Clasificador('CortaB2.mp3');
[EspectroCortaB3,EsPavaCortaB3,valoresCortaB3]=Clasificador('CortaB3.mp3');
[EspectroCortaB4,EsPavaCortaB4,valoresCortaB4]=Clasificador('CortaB4.mp3');


  
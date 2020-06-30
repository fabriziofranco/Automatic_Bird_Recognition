
%clc, clear

[X,y,Filtrado,umbral,Periodogram,f]=SegmentationBirds('Pava1.mp3');
[X2,y2,Filtrado2,umbral2,Periodogram2,f2]=SegmentationBirds('Pava2.mp3');
[X3,y3,Filtrado3,umbral3,Periodogram3,f3]=SegmentationBirds('Pava3.mp3');
[X4,y4,Filtrado4,umbral4,Periodogram4,f4]=SegmentationBirds('Pava4.mp3');
[X5,y5,Filtrado5,umbral5,Periodogram5,f5]=SegmentationBirds('Pava5.mp3');


[X6,y6,Filtrado6,umbral6,Periodogram6,f6]=SegmentationBirds('Cortarramas1.mp3');
[X7,y7,Filtrado7,umbral7,Periodogram7,f7]=SegmentationBirds('Cortarramas2.mp3');
[X8,y8,Filtrado8,umbral8,Periodogram8,f8]=SegmentationBirds('Cortarramas3.mp3');
[X9,y9,Filtrado9,umbral9,Periodogram9,f9]=SegmentationBirds('Cortarramas4.mp3');
[X10,y10,Filtrado10,umbral10,Periodogram10,f10]=SegmentationBirds('Cortarramas5.mp3');


xx1=(Periodogram);
xx2=(Periodogram2);
xx3=(Periodogram3);
xx4=(Periodogram4);
xx5=(Periodogram5);

pava=(xx1+xx2+xx3+xx4+xx5)/5;

pava = Normalizador(pava);

xx6=(Periodogram6);
xx7=(Periodogram7);
xx8=(Periodogram8);
xx9=(Periodogram9);
xx10=(Periodogram10);

ramas=(xx6+xx7+xx8+xx9+xx10)/5;

ramas = Normalizador(pava);



figure
histogram(pava,15);
title('Histograma de periodograma (no escalado) propedio normalizado de Pava con audios normalizados ')
figure
histogram(ramas,15);
title('Histograma de periodograma (no escalado) propedio normalizado de Cortarramas con audios normalizados')
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



[Periodogram,EsPava,valores]=ClasificadorV2('Pava1.mp3');
[Periodogram2,EsPava2,valores2]=ClasificadorV2('Pava2.mp3');
[Periodogram3,EsPava3,valores3]=ClasificadorV2('Pava3.mp3');
[Periodogram4,EsPava4,valores4]=ClasificadorV2('Pava4.mp3');
[Periodogram5,EsPava5,valores5]=ClasificadorV2('Pava5.mp3');



[Periodogram6,EsPava6,valores6]=ClasificadorV2('Cortarramas1.mp3');
[Periodogram7,EsPava7,valores7]=ClasificadorV2('Cortarramas2.mp3');
[Periodogram8,EsPava8,valores8]=ClasificadorV2('Cortarramas3.mp3');
[Periodogram9,EsPava9,valores9]=ClasificadorV2('Cortarramas4.mp3');
[Periodogram10,EsPava_diez,valores_diez]=ClasificadorV2('Cortarramas5.mp3');
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[PeriodogramB,EsPavaB,valoresB]=ClasificadorV2('B1.mp3');
[PeriodogramB2,EsPavaB2,valoresB2]=ClasificadorV2('B2.mp3');
[PeriodogramB3,EsPavaB3,valoresB3]=ClasificadorV2('B3.mp3');
[PeriodogramB4,EsPavaB4,valoresB4]=ClasificadorV2('B4.mp3');


[PeriodogramCortaB,EsPavaCortaB,valoresCortaB]=ClasificadorV2('CortaB.mp3');
[PeriodogramCortaB2,EsPavaCortaB2,valoresCortaB2]=ClasificadorV2('CortaB2.mp3');
[PeriodogramCortaB3,EsPavaCortaB3,valoresCortaB3]=ClasificadorV2('CortaB3.mp3');
[PeriodogramCortaB4,EsPavaCortaB4,valoresCortaB4]=ClasificadorV2('CortaB4.mp3');


  
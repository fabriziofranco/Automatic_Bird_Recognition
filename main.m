clear
close all
clc

[s1, fs] = audioread('Pava5.mp3');

[s2, fs1] = audioread('Pava5.mp3');

unos = [1,1];
pico = max(abs(s1));
tama = size(pico);
e = tama(2);
if(e == 1)
    s1 = s1 *(1/pico) ;
end
if(e == 2)
    s1 = s1 .*(unos/pico) ;
end

figure
subplot(2,2,1)
plot(s1)
xlim([1 length(s1)])
title('normalized s1')


subplot(2,2,3)
plot(s2)
xlim([1 length(s2)])
title('not notmalized s1')

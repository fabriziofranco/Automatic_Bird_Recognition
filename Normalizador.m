function[normalized]=Normalizador(s1)
unos = [1,1];
pico = max(abs(s1));
tama = size(pico);
e = tama(2);
if(e == 1)
    normalized = s1 *(1/pico) ;
end
if(e == 2)
    normalized = s1 .*(unos/pico) ;
end
end

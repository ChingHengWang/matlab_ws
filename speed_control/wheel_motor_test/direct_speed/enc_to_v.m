



enc_pre=0;

for i=1:1:498
    %v(i)=((enc(i)-enc_pre)*2*pi)/ ((52*65.5)* 0.02);
    ed(i)=enc(i)-enc_pre;
    enc_pre=enc(i);
end


%{
for i=1:1:498
    t(i)=0+i*0.02;
end

ENC.time=t';
ENC.signals.dimensions=1;
ENC.signals.values=[t' enc];
%}
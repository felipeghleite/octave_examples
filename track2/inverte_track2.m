clear
track2errado = csvread('track2errado_4.txt');
track2certo = csvread('track2certo.txt');
thr_dn_crt(1:640,1) = 240;
thr_up_crt(1:640,1) = 348;
thr_dn_err(1:573,1) = 326;
thr_up_err(1:573,1) = 446;
for i = 1:573
  track2errado_inv(i,:) = ( bitand(track2errado(i),511) * 8 );
endfor

for i = 1:640
  track2certo_corr(i,:) = ( bitand(track2certo(i),511) * 8 );
endfor

figure
subplot(2,1,1)
plot(1:640,track2certo_corr, 1:640, thr_dn_crt, 1:640, thr_up_crt)
title("Track 2 - Leitura Certa")
subplot(2,1,2)
plot(1:573,track2errado_inv, 1:573, thr_dn_err, 1:573, thr_up_err)
title("Track 2 - Leitura Errada")

figure
plot(1:640,track2certo_corr, ":+", "markersize", 10, 1:573, track2errado_inv, "-:x", "markersize", 10)
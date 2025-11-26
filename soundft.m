clc
clear
[y, Fs]=audioread('planetakeoff.m4a');
n=length(y);
t=(0:n-1)/Fs;
%figure1
plot(t,y);
xlabel('Time');
ylabel('Audio signal');
title('Original signal');
nfft=length(y); %length of time domain signal
nfft2=2^nextpow2(nfft);%length of signal in power of 2
ff=fft(y,nfft2);

%subplot(2,2,2);
f = (-nfft2/2 : nfft2/2-1) * (Fs/nfft2);   % two-sided frequency axis
figure
plot(f, abs(fftshift(ff)))          
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Two-Sided Amplitude Spectrum')

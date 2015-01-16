clc;
close all;
a=wavread('C:\Users\FEDOR NGUYEN\Desktop\17AUG_200ms_10khz_lin_1.wav');
figure('name','plot a');
plot(a);
title('noisy signal')
xlabel( 'sample');
ylabel('amlitude');


X_mags=abs(fft(a));
figure('name','plot X_mags');
plot(X_mags);
%title('DFT bins');
xlabel('DFT bins');
ylabel('magnitude');

[b aa]=butter(20,.085,'low');
% num_bins=length(X_mags)
% num_bins/2


% first haft of DFT

num_bins=length(X_mags);
figure;
plot([0:1/((num_bins/2)-1):1],X_mags(1:num_bins/2))

xlabel('Normalized frequency');
ylabel('magnetude');
a_filterred=filter(b,aa,a);

figure;
plot(abs(a_filterred));
xlabel('Normalized frequency');
ylabel('magnetude');


%figure('name','subplot 200 a');
%subplot(211),plot(a);
%subplot(212),plot(X_mags);
%subplot(213),plot([0:1/(num_bins/2)-1:1],X_mags(1:num_bins/2))

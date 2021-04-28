% define filter coefficients
%b = [1 0 1];
%a = [1];

% define various constants used in the script
nmax = 50; %max value of n for which impulse response is found
n = 0:nmax;
deln = 1*(n==0);
F = -0.5:0.005:0.5; % frequencies at which DTFT is evaluated by freqz
prec_a = 2; % max precision to use when displaying denominator coeffs
prec_b = 2; % max precision to use when displaying numerator coeffs
twopi = 2*pi;

% compute frequency response of filter
H =freqz(b,a,twopi*F);

figure(1)
clf

% make pole-zero plot for filter
subplot(2,2,1)
zplane(b,a)
grid on
title({['b=[' num2str(b,prec_b) ']'] ;[' a=[' num2str(a,prec_a) ']']});
%title(['b=[' num2str(b,prec_b) '], a=[' num2str(a,prec_a) ']']);

% plot magnitude of filter's frequency response
subplot(2,2,2)
plot(F,abs(H))
grid on
xlim([-0.5,0.5])
ylabel('frequency response magnitude')
xlabel('discrete-time frequency, F')

%plot phase of filter's frequency response

subplot(2,2,4), plot(F,(angle(H)) ./ twopi)
title('frequency response angle')
ylabel('expressed as fraction of 2\pi')
xlabel('discrete-time frequency, F')
ylim([-0.5,0.5])
grid on

%plot filter's impulse response
subplot(2,2,3)
h = filter(b,a,deln);
stem(n,h);
title('impulse response');
xlabel('sample number, n');
grid on

%display the magnitudes and angles of the filter's poles and zeros
% Note: doesn't display poles and zeros at z=0
% angles are expressed as a fraction of 2 pi radians
zs = roots(b);
magzeros = abs(zs);
anglezeros = angle(zs)./twopi;
poles = roots(a);
magpoles = abs(poles);
anglepoles = angle(poles)./twopi;
poles_mag_angle = [magpoles anglepoles]
zeros_mag_angle = [magzeros anglezeros]

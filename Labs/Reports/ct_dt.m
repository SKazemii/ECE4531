function t = ct_dt(A,f0,PHI,fs,nc, ifig)
%A 	    amplitude of cosine;
%f0 	CT frequency of cosine (cycles/sec);
%PHI 	phase of cosine (radians);
%fs	    sampling frequency (samples/sec.)
%nc 	number of CT cycles to be displayed
%ifig   option Figure number to use in the title of the plot
%t      time vector used to plot CT cosine
if (nargin < 5 | nargin > 6)
    error('in call to ct_dt: there should be 5 arguments')
end
if (A < 0 )
    error(['in call to ct_dt: Amplitude of cosine, A,' ...
        'should not be negative'])
end
if (fs<0)
    error(['in call to ct_dt: the sampling frequency,'...
           ' fs,should be positive'])
end
if (nc<0)
    error('in call to ct_dt: nc should be positive')
end
if (exist('ifig'))
    pFig = ['Fig. ', num2str(ifig),':  '];
else
    pFig = [''];
end
    

figure, clf      
Ts=1/fs; %time between samples
Tp=1/abs(f0);  %period of CT cosine (sec/cycle)
F0 = f0/fs; %DT frequency (cycles/sample)
%DT plot will display samples n=0 to n=nmax
nmax = nc/abs(F0); 
%CT plot will display t=0 to t=tmax
tmax = nmax * Ts; 
% define t vector for CT plots to:
%  have a length greater than or equal to 200
%  with every kth element corresponding to a sampling instant
k = ceil(200/nmax);
t=0:Ts/k:tmax; 
xa = A*cos(2*pi*f0*t + PHI);
plot(t,xa);
hold on
n=0:nmax;
nTs = n*Ts;
xn = A*cos(2*pi*F0*n + PHI);
stem(nTs,xn);

p0=['x_a(t)=A cos(2\pi f_0 t), '];
p1=[' A='];
p2=[', f0='];
p3=[', PHI='];
p4=[', fs='];
p5=[', nc='];
p6=[', User='];
name=getenv('USER'); % gets the users login id
title( [pFig p0 p1 num2str(A) p2 num2str(f0) p3 num2str(PHI) ...
         p4 num2str(fs) p5 num2str(nc) p6 name ] )
xlabel('t (seconds)')

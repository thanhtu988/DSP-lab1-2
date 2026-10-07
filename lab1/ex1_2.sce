clear;
A = 3; F0 = 50; Tp = 1/F0;
Fs = 300; T = 1/Fs;
delta = 0.1;

t  = 0:1e-5:5*Tp;
xa = A*sin(2*%pi*F0*t);

f = F0/Fs;
[k, N] = rat(f);
n = 0:5*N-1;
x = A*sin(2*%pi*f*n);
x = round(x*1e12)/1e12;

xq = delta*floor(x/delta);

mprintf("f = F0/Fs = %d/%d cycles/sample, omega = pi/3 rad/sample\n", k, N);
mprintf("Fundamental period N = %d samples = %.1f ms\n", N, N*T*1000);
mprintf("\n  n      x(n)      xq(n)\n");
for i = 1:N
  mprintf("%3d  %9.4f  %7.1f\n", n(i), x(i), xq(i));
end

f = scf(0); clf(); f.figure_size = [1100, 850]; f.figure_name = "Ex 1.2 - ADC";
subplot(3,1,1);
plot(t*1000, xa, "b-");
plot(n*T*1000, x, "ro");
xgrid(); title("xa(t) = 3sin(100*pi*t)  -  5 periods (Tp = 20 ms), red: samples at Fs = 300 Hz");
xlabel("t (ms)"); ylabel("xa(t)");

subplot(3,1,2);
plot2d3(n', x', style=2);
plot(n, x, "bo");
xgrid(); title("x(n) = 3sin(pi*n/3)  -  f = 1/6, N = 6 samples, 5 periods");
xlabel("n"); ylabel("x(n)");

subplot(3,1,3);
plot2d3(n', xq', style=5);
plot(n, xq, "rs");
xgrid(); title("xq(n) - truncation, delta = 0.1  ->  {0, 2.5, 2.5, 0, -2.6, -2.6}");
xlabel("n"); ylabel("xq(n)");
xs2png(0, "ex1_2_figure.png");

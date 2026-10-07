Fs = 8000;
t = 0:1/80000:0.002;
n = 0:16;
t_sample = n / Fs;

F1 = 5000;
xa1 = cos(2*%pi*F1*t);
x1_sampled = cos(2*%pi*F1*t_sample);
x1_alias = cos(2*%pi*3000*t);

figure(4); clf();
plot(t*1000, xa1, 'r--');
plot2d3(t_sample*1000, x1_sampled);
plot(t*1000, x1_alias, 'b-');
title("1.7(b) Aliasing of 5 kHz signal sampled at 8 kHz -> Alias to 3 kHz");
xlabel("Time (ms)"); ylabel("Amplitude");
legend(["Original 5 kHz", "Sampled Points", "Reconstructed 3 kHz"]);

F2 = 9000;
xa2 = cos(2*%pi*F2*t);
x2_sampled = cos(2*%pi*F2*t_sample);
x2_alias = cos(2*%pi*1000*t);

figure(5); clf();
plot(t*1000, xa2, 'r--');
plot2d3(t_sample*1000, x2_sampled);
plot(t*1000, x2_alias, 'b-');
title("1.7(c) Aliasing of 9 kHz signal sampled at 8 kHz -> Alias to 1 kHz");
xlabel("Time (ms)"); ylabel("Amplitude");
legend(["Original 9 kHz", "Sampled Points", "Reconstructed 1 kHz"]);

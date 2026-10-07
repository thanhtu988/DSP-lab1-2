t = 0:0.01:3;
xa = 3 * cos(5*t + %pi/6);

figure(1); clf();
plot(t, xa);
title("1.3(a) Continuous Signal xa(t) = 3*cos(5t + pi/6)");
xlabel("t (seconds)");
ylabel("xa(t)");
xgrid();

n = 0:50;
xb = 3 * cos(5*n + %pi/6);

figure(2); clf();
plot2d3(n, xb);
title("1.3(b) Discrete Signal x(n) = 3*cos(5n + pi/6)");
xlabel("n");
ylabel("x(n)");

n_e = 0:48;
xe = cos(%pi*n_e/2) - sin(%pi*n_e/8) + 3*cos(%pi*n_e/4 + %pi/3);

figure(3); clf();
plot2d3(n_e, xe);
title("1.3(e) Periodic Discrete Signal x(n) with N = 16 samples");
xlabel("n");
ylabel("x(n)");

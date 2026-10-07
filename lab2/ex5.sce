n = -2:2;
x = [0, 1, 3, -2, 0];
x_fold = [0, -2, 3, 1, 0];

xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

clf();

subplot(3, 1, 1);
plot2d3(n, x);
title("Tin hieu goc x(n)");
xlabel("Thoi gian n");
ylabel("x(n)");

subplot(3, 1, 2);
plot2d3(n, xe);
title("Thanh phan chan xe(n)");
xlabel("Thoi gian n");
ylabel("xe(n)");

subplot(3, 1, 3);
plot2d3(n, xo);
title("Thanh phan le xo(n)");
xlabel("Thoi gian n");
ylabel("xo(n)");

deff('[y] = f(k)', 'y = k.^2');

n = -4:4;

u_step = bool2s(n >= 0);

y_sq = f(n);

min_val = min(y_sq);
max_val = max(y_sq);

disp("Gia tri nho nhat  = " + string(min_val));
disp("Gia tri lon nhat = " + string(max_val));

clf();

subplot(2, 1, 1);
plot2d3(n, u_step);
title("Hinh 1: Tin hieu Nac don vi u(n)");
xlabel("Thoi gian n");
ylabel("u(n)");

subplot(2, 1, 2);
plot2d3(n, y_sq);
title("Hinh 2: Tin hieu y(n) = n^2 (Min=" + string(min_val) + ", Max=" + string(max_val) + ")");
xlabel("Thoi gian n");
ylabel("y(n)");

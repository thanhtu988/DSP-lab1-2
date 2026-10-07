n = -5:5;
ur = n .* bool2s(n >= 0);

clf();
plot2d3(n, ur);
title("Exercise 4: Tin hieu Doc don vi ur(n)");
xlabel("Thoi gian n");
ylabel("ur(n)");

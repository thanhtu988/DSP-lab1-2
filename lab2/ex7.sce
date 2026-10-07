n = -1:3;
x1 = [0 0 1 3 -2];
x2 = [0 1 2 3 0];
y = x1.*x2;

// x1(n)
subplot(3, 1, 1);
plot2d3(n, x1, style=2);
xtitle("Tín hiệu x1(n)", "n", "x1(n)");
gca().children.children.thickness = 3;
xgrid();
// x2(n)
subplot(3, 1, 2);
plot2d3(n, x2, style=5);
xtitle("Tín hiệu x2(n)", "n", "x2(n)");
gca().children.children.thickness = 3;
xgrid();
// y(n)
subplot(3, 1, 3);
plot2d3(n, y, style=3);
xtitle("Tín hiệu y(n) = x1(n).x2(n)", "n", "y(n)");
gca().children.children.thickness = 3;
xgrid();

nx = -2:1;
x = [1, -2, 3, 6];

ny1 = -nx($:-1:1);
y1 = x($:-1:1);

scf(1); // Tạo Cửa sổ 1
subplot(2, 1, 1);
plot2d3(nx, x, style=2);
xtitle("Original Signal x(n)", "n", "x(n)");
gca().children.children.thickness = 3; xgrid();

subplot(2, 1, 2);
plot2d3(ny1, y1, style=3);
xtitle("y1(n) = x(-n)", "n", "y1(n)");
gca().children.children.thickness = 3; xgrid();

// ==========================================
// 2. y2(n) = x(n+3) (Phép dịch sớm)
// ==========================================
ny2 = nx - 3; // Toàn bộ tín hiệu dời sang trái 3 đơn vị
y2 = x;       // Biên độ giữ nguyên

scf(2); // Tạo Cửa sổ 2
subplot(2, 1, 1);
plot2d3(nx, x, style=2);
xtitle("Original Signal x(n)", "n", "x(n)");
gca().children.children.thickness = 3; xgrid();

subplot(2, 1, 2);
plot2d3(ny2, y2, style=5);
xtitle("y2(n) = x(n+3)", "n", "y2(n)");
gca().children.children.thickness = 3; xgrid();

// ==========================================
// 3. y3(n) = 2x(-n-2) (Phép lật, dịch và khuếch đại)
// ==========================================
// Dựa trên y1(n) đã lật, ta dịch sang trái 2 đơn vị và nhân đôi biên độ
ny3 = ny1 - 2;
y3 = 2 * y1;

scf(3); // Tạo Cửa sổ 3
subplot(2, 1, 1);
plot2d3(nx, x, style=2);
xtitle("Original Signal x(n)", "n", "x(n)");
gca().children.children.thickness = 3; xgrid();

subplot(2, 1, 2);
plot2d3(ny3, y3, style=6);
xtitle("y3(n) = 2*x(-n-2)", "n", "y3(n)");
gca().children.children.thickness = 3; xgrid();

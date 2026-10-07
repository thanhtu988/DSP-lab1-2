clear;
F0 = 50; Tp = 1/F0;
t  = 0:1e-5:6*Tp;
xa = cos(2*%pi*F0*t);
r   = [1/6, 3/8, sqrt(2)/4];
lbl = ["T/Tp = 1/6 (k=1, N=6)", "T/Tp = 3/8 (k=3, N=8)", "T/Tp = sqrt(2)/4 (irrational)"];

f = scf(1); clf(); f.figure_size = [1100, 850]; f.figure_name = "Problem 1.6";
for i = 1:3
  T = r(i)*Tp;
  n = 0:floor(6*Tp/T);
  x = cos(2*%pi*F0*n*T);

  nn = 0:2000; xx = cos(2*%pi*r(i)*nn); Np = -1;
  for N = 1:1000
    if max(abs(xx(1+N:$) - xx(1:$-N))) < 1e-9 then Np = N; break; end
  end
  if Np > 0 then
    msg = msprintf("periodic: N = %d samples, N*T = %.1f ms = %d*Tp", Np, Np*T*1000, round(Np*T/Tp));
  else
    msg = "NOT periodic (no N <= 1000 found)";
  end
  mprintf("Case %d: %s -> %s\n", i, lbl(i), msg);

  subplot(3,1,i);
  plot(t*1000, xa, "k-");
  plot2d3(n'*T*1000, x', style=2);
  plot(n*T*1000, x, "ro");
  xgrid(); title(lbl(i) + "  ->  " + msg);
  xlabel("t (ms)"); ylabel("x(nT)");
end
xs2png(1, "ex1_6_figure.png");

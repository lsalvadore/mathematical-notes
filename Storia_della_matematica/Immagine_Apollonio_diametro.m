Destra = 100;
Res = 1000;
Spessore = 10;

x = linspace(0,Destra,Res);
y = -x.**2;
Xpar = [x, -x];
Ypar = [y, y];

x = [(Destra - 1)/4, - 3 * (Destra - 1)/4, (Destra - 1)/2];
y = -x.**2;
Xcorde = [x, x(1) + x(2) - x(3)];
Ycorde = [y, -Xcorde(end) ** 2];

Xdiametro = (Xcorde(1) + Xcorde(2))/2;

Immagine = figure("visible","off");
axis off;
hold on;
plot(Xpar,Ypar,".b")
plot(Xcorde(1:2), Ycorde(1:2), "-r", "linewidth", Spessore);
plot(Xcorde(3:4), Ycorde(3:4), "-r", "linewidth", Spessore);
plot([Xdiametro, Xdiametro], [1, Ycorde(end) + 1], "-m", "linewidth", Spessore);
print(Immagine, "Immagine_Apollonio_diametro.png");

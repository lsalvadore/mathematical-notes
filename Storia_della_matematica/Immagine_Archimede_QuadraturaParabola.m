Destra = 10;
Res = 1000;
Spessore = 5;

x = linspace(0,Destra,Res);
y = sqrt(x);
Alto = y(end);

X = [x, x];
Y = [y, -y];

Immagine = figure("visible","off");
hold on;
axis off;
plot(X,Y,".b");
plot([0, Destra, Destra, 0], [0, Alto,-Alto,0], "-k", "linewidth", Spessore);
plot([0, Destra/4, Destra], [0, sqrt(Destra)/2,Alto], "-r", "linewidth", Spessore);
plot([0, Destra/4, Destra], [0, -sqrt(Destra)/2,-Alto], "-r", "linewidth", Spessore);
print("Immagine_Archimede_QuadraturaParabola.png");

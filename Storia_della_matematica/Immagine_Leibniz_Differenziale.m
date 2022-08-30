Res = 1000;
Spessore = 10;
Destra = 4;
Sinistra = -1;
dx = 1;
dy = 1;

X = linspace(Sinistra,Destra,Res);
Y = - (X - 3) .^2 + 2;

Immagine = figure("visible","off");
axis("equal");
axis off
hold on;
plot(X, Y, ".b");
plot([Sinistra Destra], [0 0], "-k", "linewidth", Spessore);
plot([0 0], [3 -8], "-k", "linewidth", Spessore);
plot([3 0], [11 -7], "-r", "linewidth", Spessore);
text([0 0 7/6] - dx, [0 -7 0] + dy, {"O" "P" "T"}, "fontsize", 20);
print(Immagine, "Immagine_Leibniz_Differenziale.png");

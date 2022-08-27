Res = 1000;
Destra = -0.5;
Sinistra = -2;

X = linspace(Sinistra,Destra,Res);
Y = 1./X - X .**2 - X - 1;

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;
plot(X, Y, ".b");
print(Immagine, "Immagine_Geometrie_ParabolaCartesiana.png");

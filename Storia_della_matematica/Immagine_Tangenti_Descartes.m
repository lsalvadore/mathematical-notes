Res = 1000;
Destra = 1000;
Spessore = 10;
Coeff= 0.001;
Tangenza = 4 * Res/5;
dx = 75;
dy = 75;

Xpar = linspace(0,Destra,Res);
Ypar = Coeff * Xpar.^2;

Xtan = Xpar(Tangenza);
Ytan = Ypar(Tangenza);
XCentro = Xtan + 2 * Coeff ^2 * Xtan ^ 3;

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;
plot(Xpar,Ypar,".b")
plot([0 XCentro + dx],[0 0], "-k", "linewidth", Spessore);
plot([0 0], [Ypar(end) + dy, - Ytan - dy], "-k", "linewidth", Spessore);
plot([0 Xtan], [- Ytan Ytan], "-r", "linewidth", Spessore);
plot([XCentro Xtan], [0 Ytan], "-r", "linewidth", Spessore);
plot([Xtan Xtan], [0 Ytan], "-k", "linewidth", Spessore);
text([0 Xtan Xtan/2 Xtan XCentro 0] - dx, [0 Ytan 0 0 0 -Ytan] + dy, {"O" "T" "A" "B" "C" "D"}, "fontsize", 20);
print(Immagine, "Immagine_Tangenti_Descartes.png");

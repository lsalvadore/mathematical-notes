Sinistra = 1000;
Res = 1000;
Spessore = 10;
Tangenza = Res/5;
Intersezione = 900;
dx = 10;
dy = 2;

x = linspace(- Sinistra,0,Res);
y = sqrt(- x);
Xpar = [x, x];
Ypar = [y, -y];

Xtan = x(Tangenza);
Ytan = y(Tangenza);
Xint = x(Intersezione);
Yint = y(Intersezione);

Destra = - Xtan - 2 * Ytan;
Yintpar = (-Xint + Destra) * Ytan / (-Xtan + Destra);

Immagine = figure("visible","off");
axis off;
hold on;
plot(Xpar,Ypar,".b")
plot([Destra Xtan],[0 Ytan], "-r", "linewidth", Spessore);
plot([Xtan Xtan],[0 Ytan], "-k", "linewidth", Spessore);
plot([Xint Xint],[0 Yintpar], "-k", "linewidth", Spessore);
plot([- Sinistra Destra],[0 0], "-k", "linewidth", Spessore);
text([Xtan Xtan Xint Xint Xint Destra 0] + dx, [Ytan 0 Yintpar Yint 0 0 0] + dy, {"T" "C" "S" "R" "B" "P" "V"}, "fontsize", 20);
print(Immagine, "Immagine_Tangenti_Fermat.png");

Res = 100000;
Spessore = 10;
Destra = 5;
dx = 0.5;
dy = 0.5;

Piede = Res/4;

XCirc = linspace(- Destra, Destra, Res);
YCirc = sqrt(Destra ^ 2 - XCirc .^ 2);

XPiede = XCirc(Piede);
YPiede = YCirc(Piede);

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;
plot(XCirc,YCirc,".k");
plot([-Destra XPiede], [0 0], "-g", "linewidth", Spessore);
plot([XPiede Destra], [0 0], "-b", "linewidth", Spessore);
plot([XPiede XPiede], [0 YPiede], "-r", "linewidth", Spessore);
text([- Destra + dx XPiede - dx XPiede - dx Destra - dx], [0 0 YPiede 0] + dy, {"U" "A" "R" "B"}, "fontsize", 20);
print(Immagine, "Immagine_Geometrie_Radice.png");

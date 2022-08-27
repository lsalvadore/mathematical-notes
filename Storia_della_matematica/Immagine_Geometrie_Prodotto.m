Res = 1000;
Spessore = 10;
dx = 0.5;
dy = 0.5;

XA = - 5;
YA = 0;
XB = - 3;
YB = 3;
XU = - 2;
YU = 0;

XC = ( (XU - XB) * YA - XA * (YU - YB) ) / ( (XU - XB) * YB / XB - (YU - YB) );
YC = YB * XC / XB;

Immagine = figure("visible","off");
axis off;
hold on;
plot([XC 0], [YC 0], "-r", "linewidth", Spessore);
plot([XA 0], [YA 0], "-b", "linewidth", Spessore);
plot([XB 0], [YB 0], "-b", "linewidth", Spessore);
plot([XU XB], [YU YB], "-k", "linewidth", Spessore);
plot([XA XC], [YA YC], "-k", "linewidth", Spessore);
text([XA XB XC XU 0] - dx, [YA YB YC YU 0] + dy, {"A" "B" "C" "U" "O"}, "fontsize", 20);
print(Immagine, "Immagine_Geometrie_Prodotto.png");

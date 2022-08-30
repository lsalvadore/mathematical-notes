Spessore = 10;
dx = 0.1;
dy = 0.1;

Censi = 1;
Radici = 14;
Numero = 40;

AA = 0;
AB = Radici;
AM = Radici/2;
MX = sqrt((Radici/2)^2 - Numero);
AX = AM + MX;
XB = AB - (AM + MX);
h = AM - XB;

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;
plot([0 Radici], [0 0], "-k", "linewidth", Spessore);
plot([0 Radici], - [XB XB], "-k", "linewidth", Spessore);
plot([AA AA], - [0 XB], "-k", "linewidth", Spessore);
plot([AM AM], - [0 XB], "-k", "linewidth", Spessore);
plot([AX AX], - [0 XB], "-k", "linewidth", Spessore);
plot([AB AB], - [0 XB], "-k", "linewidth", Spessore);
text([AA AM AX AB] + dx, - [XB XB XB XB] - dy, {"A'" "M'" "X'" "B'"}, "fontsize", 20);
text([AA AM AX AB] + dx, [0 0 0 0] + dy, {"A" "M" "X" "B"}, "fontsize", 20);
print(Immagine, "Immagine_Fibonacci_SecondoGrado.png");
plot([AA AA], [0, h], "-k", "linewidth", Spessore);
plot([AM AM], [0, h], "-k", "linewidth", Spessore);
plot([XB XB], [0, h], "-k", "linewidth", Spessore);
plot([AA AM], [h, h], "-k", "linewidth", Spessore);
text([AA AM XB XB] + dx, [h, h, h, 0] + dy, {"A''" "M''" "Y''" "Y"}, "fontsize", 20);
print(Immagine, "Immagine_Fibonacci_SecondoGradobis.png");

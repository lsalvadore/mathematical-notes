Spessore = 10;
dx = 0.1;
dy = 0.1;

Censi = 1;
Radici = 3;
Numero = 4;

x = sqrt(Numero + Radici.^2/4) + Radici/2;
AB = x;
AE = Radici;
AM = AE/2;
ME = AE - AM;
MN = AB - AM;
AN = AB - MN;
AG = AB - ME;


Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;

plot([0 AB],[0 0],"-k","linewidth",Spessore);
plot([0 AB],[AB AB],"-k","linewidth",Spessore);
plot([0 0],[0 AB],"-k","linewidth",Spessore);
plot([AB AB],[0 AB],"-k","linewidth",Spessore);

plot([0 AB],[AE AE],"-k","linewidth",Spessore);

plot([AG AB],[AE AE],"-k","linewidth",Spessore);

plot([AN, AB],[AM AM],"-b","linewidth",Spessore);
plot([AN, AB],[AB AB],"-b","linewidth",Spessore);
plot([AN, AN],[AM AB],"-b","linewidth",Spessore);
plot([AB AB],[AM AB],"-b","linewidth",Spessore);

plot([0 AN],[AB AB],"-r","linewidth",Spessore);
plot([0 AG],[AE AE],"-r","linewidth",Spessore);
plot([AN AG],[AM AM],"-r","linewidth",Spessore);
plot([0 0],[AE AB],"-r","linewidth",Spessore);
plot([AN AN],[AM AB],"-r","linewidth",Spessore);
plot([AG AG],[AM AE],"-r","linewidth",Spessore);

text([0 0 AB AB] + dx, [0 AB 0 AB] + dy, {"A" "D" "B" "C"}, "fontsize", 20);
text([0 AB] + dx, [AE AE] + dy, {"E" "F"}, "fontsize", 20);
text([AN AN AB] + dx, [AB AM AM] + dy, {"L" "N" "M"}, "fontsize", 20);
text([AN AG AG] + dx, [AE AE AM] + dy, {"O" "G" "P"}, "fontsize", 20);

print(Immagine, "Immagine_Fibonacci_SecondoGrado3.png");

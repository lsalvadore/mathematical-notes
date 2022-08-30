Spessore = 10;
dx = 0.1;
dy = 0.1;

Censi = 1;
Radici = 10;
Numero = 39;

x = sqrt(Numero + Radici.^2/4) - Radici/2;
h = Radici/4;
L = x + 2 * h;

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;

plot([0 L], [0 0], "-k", "linewidth", Spessore);
plot([0 L], [L L], "-k", "linewidth", Spessore);
plot([0 0], [0 L], "-k", "linewidth", Spessore);
plot([L L], [0 L], "-k", "linewidth", Spessore);

plot([0 h], [h h], "-r", "linewidth", Spessore);
plot([0 h], [L - h, L - h], "-r", "linewidth", Spessore);
plot([0 0], [h, L - h], "-r", "linewidth", Spessore);

plot([L - h, L], [h h], "-r", "linewidth", Spessore);
plot([L - h, L], [L - h, L - h], "-r", "linewidth", Spessore);
plot([L L], [h, L - h], "-r", "linewidth", Spessore);

plot([h, L - h], [0 0], "-r", "linewidth", Spessore);
plot([h h], [0 h], "-r", "linewidth", Spessore);
plot([L - h, L - h], [0 h], "-r", "linewidth", Spessore);

plot([h, L - h], [L L], "-r", "linewidth", Spessore);
plot([h h], [L - h, L], "-r", "linewidth", Spessore);
plot([L - h, L - h], [L - h, L], "-r", "linewidth", Spessore);

plot([h, L - h], [h h], "-b", "linewidth", Spessore);
plot([h, L - h], [L - h, L - h], "-b", "linewidth", Spessore);
plot([h h], [h, L - h], "-b", "linewidth", Spessore);
plot([L - h, L - h], [h, L - h], "-b", "linewidth", Spessore);

print(Immagine, "Immagine_Fibonacci_SecondoGrado2.png");

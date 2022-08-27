Risoluzione = 1000;
EstremoSinistro = -4;
EstremoDestro = 4;
Intervallo = linspace(EstremoSinistro,EstremoDestro,Risoluzione);

[XX YY] = meshgrid(Intervallo);

R1 = @(z) 1 + z;
R2 = @(z) 1 + z + z.**2/2;
R3 = @(z) 1 + z + z.**2/2 + z.**3 / 6;
R4 = @(z) 1 + z + z.**2/2 + z.**3 / 6 + z.**4 /24;

Z = XX + i * YY;

Immagine = figure("visible","off");
hold on;
axis("equal");
set(gca,"fontsize",7);
plot([EstremoSinistro; EstremoDestro],[0; 0],"-k"); 
plot([0; 0],[-4,4],"-k");
plot([0],[0],"-c;Ordine di consistenza = 1;");
plot([0],[0],"-b;Ordine di consistenza = 2;");
plot([0],[0],"-g;Ordine di consistenza = 3;");
plot([0],[0],"-r;Ordine di consistenza = 4;");
contour(Intervallo,Intervallo,abs(R1(Z)),[1,1],"-c");
contour(Intervallo,Intervallo,abs(R2(Z)),[1,1],"-b");
contour(Intervallo,Intervallo,abs(R3(Z)),[1,1],"-g");
contour(Intervallo,Intervallo,abs(R4(Z)),[1,1],"-r");

print(Immagine, "Immagine_RegioneDiStabilitaMetodiEsplicitiOttimali.png");

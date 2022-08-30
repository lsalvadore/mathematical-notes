SemilatoRetto = 0.4;
Eccentricita = 0.7;
SemiasseMaggiore = SemilatoRetto/(1 - Eccentricita ^ 2);
SemiasseMinore = SemiasseMaggiore * sqrt(1 - Eccentricita ^ 2);
SemidistanzaFocale = SemiasseMaggiore * Eccentricita;

EstremoDestro = SemilatoRetto + SemilatoRetto;
EstremoAlto = SemilatoRetto + 1;
EstremoSinistro = - SemilatoRetto/(1 - Eccentricita) - SemilatoRetto;
EstremoBasso = - EstremoAlto;

dx = 0.1;
dy = 0.1;
Spessore = 2;
DimensioneCarattere = 10;

AnomaliaVera = 2 * pi / 3;
RaggioAnomaliaVera = SemilatoRetto / 2;
RisoluzioneAnomaliaVera = 50;

Immagine = figure("visible","off");
hold on;

axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

[XX YY] = OrbitaKeplero(SemilatoRetto,Eccentricita,pi);
plot(XX,YY,".b");

plot([- SemidistanzaFocale; - SemidistanzaFocale],[EstremoAlto; EstremoBasso],"--k");

IntervalloAnomaliaVera = linspace(0,AnomaliaVera,RisoluzioneAnomaliaVera);
plot(RaggioAnomaliaVera * cos(IntervalloAnomaliaVera),RaggioAnomaliaVera * sin(IntervalloAnomaliaVera),".g");
text([RaggioAnomaliaVera * cos(IntervalloAnomaliaVera(end/2)) + dx] + dx, [0] + dy, {'\nu'},"fontsize",DimensioneCarattere);

R = SemilatoRetto ./ ( 1 + Eccentricita * cos(AnomaliaVera));
plot([0, R * cos(AnomaliaVera)],[0,R * sin(AnomaliaVera)],"-k");
text([R * cos(AnomaliaVera)/2],[R * sin(AnomaliaVera) / 2],{'r'});

text([0, - 2 * SemidistanzaFocale, - 2 * SemidistanzaFocale, - SemidistanzaFocale/2 - dx, -SemidistanzaFocale, 0] + dx, [0 - 2 * dy, 0, - 2 * dy, - 2 * dy, SemiasseMinore/2, SemilatoRetto/2 - dy] + dy, {'F_1' 'F_2' 'a' 'f' 'b' 'p'},"fontsize",DimensioneCarattere);

plot([-SemidistanzaFocale - SemiasseMaggiore, -SemidistanzaFocale],[0,0],"-m","linewidth",Spessore);
plot([-SemidistanzaFocale, -SemidistanzaFocale],[0,SemiasseMinore],"-m","linewidth",Spessore);
plot([-SemidistanzaFocale,0],[0,0],"-r","linewidth",Spessore);
plot([0,0],[0,SemilatoRetto],"-y","linewidth",Spessore);

print(Immagine,"Immagine_Keplero_Ellisse.png");

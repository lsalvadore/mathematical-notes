SemilatoRetto = 0.4;
Eccentricita = 1;
AnomaliaMassimaDisegnata = 2 * pi/3;

EstremoDestro = SemilatoRetto + SemilatoRetto;
EstremoAlto = SemilatoRetto + 1;
EstremoSinistro = - SemilatoRetto/(1 + Eccentricita) * cos(AnomaliaMassimaDisegnata) - SemilatoRetto;
EstremoBasso = - EstremoAlto;

dx = 0.5;
dy = 0.1;
Spessore = 2;
DimensioneCarattere = 10;

AnomaliaVera = 0.9 * AnomaliaMassimaDisegnata;
RaggioAnomaliaVera = SemilatoRetto / 2;
RisoluzioneAnomaliaVera = 50;

Immagine = figure("visible","off");
hold on;
axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

[XX YY] = OrbitaKeplero(SemilatoRetto,Eccentricita,AnomaliaMassimaDisegnata);
plot(XX,YY,".b");

R = SemilatoRetto ./ ( 1 + Eccentricita * cos(AnomaliaVera));
plot([0, R * cos(AnomaliaVera)],[0,R * sin(AnomaliaVera)],"-k");
text([R * cos(AnomaliaVera)/2],[R * sin(AnomaliaVera) / 2],{'r'});

IntervalloAnomaliaVera = linspace(0,AnomaliaVera,RisoluzioneAnomaliaVera);
plot(RaggioAnomaliaVera * cos(IntervalloAnomaliaVera),RaggioAnomaliaVera * sin(IntervalloAnomaliaVera),".g");
text([RaggioAnomaliaVera * cos(IntervalloAnomaliaVera(end/2))] + dx/4, [0] + dy, {'\nu'},"fontsize",DimensioneCarattere);

plot([SemilatoRetto, SemilatoRetto], [EstremoAlto, EstremoBasso], "--k");

plot([0,0],[0,SemilatoRetto],"-m","linewidth",Spessore);
plot([0,SemilatoRetto/2],[0,0],"-m","linewidth",Spessore);
plot([0,0],[0,SemilatoRetto],"-y","linewidth",Spessore);

text([- 9/10 * dx, - dx] + dx, [SemilatoRetto/2 - dy, - 2 * dy] + dy,{"p" "p/2"});

print(Immagine,"Immagine_Keplero_Parabola.png");

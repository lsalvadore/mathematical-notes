SemilatoRetto = 1;
Eccentricita = 1.001;
SemiasseMaggiore = SemilatoRetto/(1 - Eccentricita ^ 2);
SemidistanzaFocale = SemiasseMaggiore * Eccentricita;
Perielio = SemilatoRetto/2;
Raggio = SemidistanzaFocale + Perielio;
AnomaliaMassimaDisegnata = 0.6 * pi;

dx = 0.1;
dy = 0.1;
Spessore = 2;
DimensioneCarattere = 10;

AnomaliaVera = 0.55 * pi;

RisoluzioneIperbole = 500;
RisoluzioneAnomaliaVera = 50;
RisoluzioneAnomaliaEccentrica = 50;
RisoluzioneAsintoto = 2;

RaggioAnomaliaVera = 0.1;
RaggioAnomaliaEccentrica = 0.3;

Immagine = figure("visible","off");
hold on;

axis("equal");
axis("off");

[XXE YYE] = OrbitaKeplero(SemilatoRetto,Eccentricita,AnomaliaMassimaDisegnata);
plot(XXE,YYE,".b");

XXC = linspace(min(XXE),max(XXE),RisoluzioneIperbole);
YYC = sqrt((XXC - (SemilatoRetto/(1 + Eccentricita)) - 1).^2 - 1);
XXC = [XXC, XXC];
YYC = [YYC,  - YYC];
plot(XXC,YYC,".b");

XXA = linspace(2 * (min(XXC) - max(XXC)),max(XXC) - min(XXC),RisoluzioneAsintoto);
YYA = XXA;
XXA = XXA + (SemilatoRetto/(1 + Eccentricita)).^2 + 1;
plot(XXA,YYA,"--k");
plot(XXA,-YYA,"--k");

EstremoDestro = max(XXA);
EstremoAlto = max(YYC);
EstremoSinistro = min(XXC);
EstremoBasso = - EstremoAlto;

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

IntervalloAnomaliaVera = linspace(0, AnomaliaVera, RisoluzioneAnomaliaVera);
XXAnomaliaVera = RaggioAnomaliaVera * cos(IntervalloAnomaliaVera);
YYAnomaliaVera = RaggioAnomaliaVera * sin(IntervalloAnomaliaVera);
plot(XXAnomaliaVera,YYAnomaliaVera,".r");
AnomaliaVeraModulo = SemilatoRetto/(1 + Eccentricita * cos(AnomaliaVera));
plot([0, AnomaliaVeraModulo * cos(AnomaliaVera)], [0, AnomaliaVeraModulo * sin(AnomaliaVera)], "-r", "linewidth", Spessore);
text([AnomaliaVeraModulo * cos(AnomaliaVera)] - 2 * dx, [AnomaliaVeraModulo * sin(AnomaliaVera)], {'A'});
text([0,0] + dx, [0, - 2 * dy] + dy, {'\nu' 'O'});

plot(AnomaliaVeraModulo * cos(AnomaliaVera) * [1, 1],[EstremoAlto,EstremoBasso],"--k");
plot( [(SemilatoRetto/(1 + Eccentricita)).^2 + 1, AnomaliaVeraModulo * cos(AnomaliaVera)],
      [0, sqrt((AnomaliaVeraModulo * cos(AnomaliaVera) - (SemilatoRetto/(1 + Eccentricita)) - 1).^2 - 1)],
      "-g", "linewidth", Spessore);
text( [(SemilatoRetto/(1 + Eccentricita)).^2 + 1, AnomaliaVeraModulo * cos(AnomaliaVera) - 3 * dx] + dx,
      [0, sqrt((AnomaliaVeraModulo * cos(AnomaliaVera) - (SemilatoRetto/(1 + Eccentricita)) - 1).^2 - 1)] + dy,
      {'C' 'B'});

text([AnomaliaVeraModulo * cos(AnomaliaVera) - 3 * dx, SemilatoRetto/(1 + Eccentricita)] + dx,[0, 0] + dy,{'H' 'D'});

print(Immagine,"Immagine_Keplero_AnomaliaEccentricaIperbolica.png");

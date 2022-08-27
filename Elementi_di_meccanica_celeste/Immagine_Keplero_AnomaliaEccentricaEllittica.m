SemilatoRetto = 1;
Eccentricita = 0.7;
SemiasseMaggiore = SemilatoRetto/(1 - Eccentricita ** 2);
SemidistanzaFocale = SemiasseMaggiore * Eccentricita;
Perielio = SemilatoRetto/2;
Raggio = SemidistanzaFocale + Perielio;

EstremoDestro = SemilatoRetto;
EstremoAlto = SemilatoRetto + Raggio;
EstremoSinistro = - 2 * Raggio;
EstremoBasso = - EstremoAlto;

dx = 0.1;
dy = 0.1;
Spessore = 2;
DimensioneCarattere = 10;

AnomaliaVera = 5 * pi / 12;

RisoluzioneCirconferenza = 500;
RisoluzioneAnomaliaVera = 50;
RisoluzioneAnomaliaEccentrica = 50;

RaggioAnomaliaVera = 0.1;
RaggioAnomaliaEccentrica = 0.3;

Immagine = figure("visible","off");
hold on;

axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

[XXE YYE] = OrbitaKeplero(SemilatoRetto,Eccentricita,pi);
plot(XXE,YYE,".b");

IC = linspace(0,2 * pi,RisoluzioneCirconferenza);
XXC = Raggio * cos(IC) - SemidistanzaFocale;
YYC = Raggio * sin(IC);
plot(XXC,YYC,".b");

IntervalloAnomaliaVera = linspace(0, AnomaliaVera, RisoluzioneAnomaliaVera);
XXAnomaliaVera = RaggioAnomaliaVera * cos(IntervalloAnomaliaVera);
YYAnomaliaVera = RaggioAnomaliaVera * sin(IntervalloAnomaliaVera);
plot(XXAnomaliaVera,YYAnomaliaVera,".r");
AnomaliaVeraModulo = SemilatoRetto/(1 + Eccentricita * cos(AnomaliaVera));
plot([0, AnomaliaVeraModulo * cos(AnomaliaVera)], [0, AnomaliaVeraModulo * sin(AnomaliaVera)], "-r", "linewidth", Spessore);
text([0,0] + dx, [0, - 2 * dy] + dy, {'\nu' 'O'});

AnomaliaEccentrica = acos((SemidistanzaFocale + AnomaliaVeraModulo * cos(AnomaliaVera))/Raggio);
IntervalloAnomaliaEccentrica = linspace(0, AnomaliaEccentrica, RisoluzioneAnomaliaEccentrica);
XXAnomaliaEccentrica = RaggioAnomaliaEccentrica * cos(IntervalloAnomaliaEccentrica) - SemidistanzaFocale;
YYAnomaliaEccentrica = RaggioAnomaliaEccentrica * sin(IntervalloAnomaliaEccentrica);
plot(XXAnomaliaEccentrica,YYAnomaliaEccentrica,".g");
AnomaliaEccentricaModulo = Raggio;
plot([0, AnomaliaEccentricaModulo * cos(AnomaliaEccentrica)] - SemidistanzaFocale, [0, AnomaliaEccentricaModulo * sin(AnomaliaEccentrica)], "-g", "linewidth", Spessore);
text([- SemidistanzaFocale, - SemidistanzaFocale] + dx, [0, - 2 * dy] + dy, {'u' 'C'});

plot(AnomaliaVeraModulo * cos(AnomaliaVera) * [1, 1],[EstremoAlto,EstremoBasso],"--k");

text(AnomaliaVeraModulo * cos(AnomaliaVera) * [1, 1, 1] + dx, [AnomaliaVeraModulo * sin(AnomaliaVera), AnomaliaEccentricaModulo * sin(AnomaliaEccentrica), 0] + dy, {'A' 'B' 'H'});
text([AnomaliaVeraModulo * cos(AnomaliaVera)]/4 - dx,[AnomaliaVeraModulo * sin(AnomaliaVera)]/4 + dy,{'r'});
text([SemilatoRetto/2] + dx,[0] + dy, {'D'});

print(Immagine,"Immagine_Keplero_AnomaliaEccentricaEllittica.png");

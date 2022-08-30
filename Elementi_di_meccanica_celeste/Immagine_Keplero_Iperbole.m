SemilatoRetto = 0.4;
Eccentricita = 1.7;
AnomaliaMassimaDisegnata = 0.6 * pi;
SemiasseMaggiore = SemilatoRetto/(1 - Eccentricita ^ 2);
SemidistanzaFocale = SemiasseMaggiore * Eccentricita;
Perielio = SemilatoRetto/(1 + Eccentricita);

EstremoDestro = SemilatoRetto + SemilatoRetto;
EstremoAlto = SemilatoRetto + 1;
EstremoSinistro = SemilatoRetto/(1 + Eccentricita * cos(AnomaliaMassimaDisegnata)) * cos(AnomaliaMassimaDisegnata);
EstremoBasso = - EstremoAlto;

AnomaliaVera = 0.95 * AnomaliaMassimaDisegnata;
RaggioAnomaliaVera = 3 * Perielio/4;
RisoluzioneAnomaliaVera = 50;

dx = 0.1;
dy = 0.1;
Spessore = 2;
DimensioneCarattere = 10;

Immagine = figure("visible","off");
hold on;
axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);
[XX YY] = OrbitaKeplero(SemilatoRetto,Eccentricita,AnomaliaMassimaDisegnata);

plot(XX,YY,".b");

AnomaliaAsintoto = acos(- 1/Eccentricita);
TanAnomaliaAsintoto = tan(AnomaliaAsintoto);
RaggioAnomaliaAsintoto = RaggioAnomaliaVera;
RisoluzioneAnomaliaAsintoto = 50;

plot([EstremoSinistro, EstremoDestro],[- TanAnomaliaAsintoto * (EstremoSinistro + SemiasseMaggiore - Perielio), - TanAnomaliaAsintoto * (EstremoDestro+ SemiasseMaggiore - Perielio)],"-r");
plot([EstremoSinistro, EstremoDestro],[TanAnomaliaAsintoto * (EstremoSinistro + SemiasseMaggiore - Perielio), TanAnomaliaAsintoto * (EstremoDestro + SemiasseMaggiore - Perielio)],"-r");
plot([- SemiasseMaggiore + Perielio, - SemiasseMaggiore + Perielio],[EstremoAlto, EstremoBasso],"--k");

IntervalloAnomaliaAsintoto = linspace(AnomaliaAsintoto,pi,RisoluzioneAnomaliaAsintoto);
plot(RaggioAnomaliaAsintoto * cos(IntervalloAnomaliaAsintoto) - SemiasseMaggiore + Perielio,RaggioAnomaliaAsintoto * sin(IntervalloAnomaliaAsintoto),".r");
text([RaggioAnomaliaAsintoto * cos(IntervalloAnomaliaAsintoto(end/2))] + 3 * dx, [0] + 2 * dy, {'\nu_a_s'},"fontsize",DimensioneCarattere);

plot([0, Perielio],[0,0],"-c","linewidth",Spessore);
plot([Perielio,Perielio - SemiasseMaggiore],[0,0],"-m","linewidth",Spessore);
plot([0,0],[0,SemilatoRetto],"-y","linewidth",Spessore);
text([0, Perielio - SemiasseMaggiore/2, 0],[0,0,SemilatoRetto/2 + dy] - dy,{"r_m_i_n" "-a" "p"});

R = SemilatoRetto ./ ( 1 + Eccentricita * cos(AnomaliaVera));
plot([0, R * cos(AnomaliaVera)],[0,R * sin(AnomaliaVera)],"-k");
text([R * cos(AnomaliaVera)/2],[R * sin(AnomaliaVera) / 2],{'r'});

IntervalloAnomaliaVera = linspace(0,AnomaliaVera,RisoluzioneAnomaliaVera);
plot(RaggioAnomaliaVera * cos(IntervalloAnomaliaVera),RaggioAnomaliaVera * sin(IntervalloAnomaliaVera),".g");
text([RaggioAnomaliaVera * cos(IntervalloAnomaliaVera(end/2))] + dx/16, [0] + dy, {'\nu'},"fontsize",DimensioneCarattere);

print(Immagine,"Immagine_Keplero_Iperbole.png");

SemilatoRetto = 0.4;
Eccentricita = 0.7;
AnomaliaMassimaDisegnata = 0.9  * pi/2;

Anomalia1 = AnomaliaMassimaDisegnata/3;
Anomalia2 = 2 * AnomaliaMassimaDisegnata/3;
RisoluzioneAnomalia1 = 50;
RisoluzioneAnomalia2 = 50;
RaggioAnomalia1 = 0.1; 
RaggioAnomalia2 = 0.15; 

EstremoDestro = SemilatoRetto;
EstremoAlto = SemilatoRetto;
EstremoSinistro = - 0.1;
EstremoBasso = - EstremoAlto;

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

IntervalloAnomalia1 = linspace(0,Anomalia1,RisoluzioneAnomalia1);
plot(RaggioAnomalia1 * cos(IntervalloAnomalia1),RaggioAnomalia1 * sin(IntervalloAnomalia1),".g");
R = SemilatoRetto ./ ( 1 + Eccentricita * cos(Anomalia1));
plot([0, R * cos(Anomalia1)],[0,R * sin(Anomalia1)],"-b");

IntervalloAnomalia2 = linspace(0,Anomalia2,RisoluzioneAnomalia2);
plot(RaggioAnomalia2 * cos(IntervalloAnomalia2),RaggioAnomalia2 * sin(IntervalloAnomalia2),".r");
R = SemilatoRetto ./ ( 1 + Eccentricita * cos(Anomalia2));
plot([0, R * cos(Anomalia2)],[0,R * sin(Anomalia2)],"-b");

print(Immagine,"Immagine_MotiCentrali_SecondaLeggeDiKeplero.png");

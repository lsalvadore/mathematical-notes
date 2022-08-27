EstremoSinistro = -2.5;
EstremoDestro = 2.5;
EstremoAlto = 2.5;
EstremoBasso = -2.5;
Spessore = 2;
dx = 0.1;
dy = 0.3;
DimensioneCarattere = 15;

Anomalia = 2 * pi/3;
AnomaliaLenz = pi/6;
AnomaliaVera = Anomalia - AnomaliaLenz;
RaggioAnomalia = 0.3;
RisoluzioneAnomalia = 50;
RaggioAnomaliaLenz = 2;
RisoluzioneAnomaliaLenz = 50;
RaggioAnomaliaVera = 3;
RisoluzioneAnomaliaVera = 150;

DistanzaDalCentro = 4.5;
DistanzaDalCentroLenz = 5;

Immagine = figure("visible","off");
hold on;
axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

plot([DistanzaDalCentro * cos(Anomalia)],[DistanzaDalCentro * sin(Anomalia)],"xk","linewidth",Spessore);
plot([0,DistanzaDalCentro * cos(Anomalia)],[0,DistanzaDalCentro * sin(Anomalia)],"-k","linewidth",Spessore);
text([DistanzaDalCentro * cos(Anomalia),3 * DistanzaDalCentro/4 * cos(Anomalia)] + dx,[DistanzaDalCentro * sin(Anomalia),3 * DistanzaDalCentro/4 * sin(Anomalia)] + dy,{'X' '\rho'},"fontsize",DimensioneCarattere);

plot([DistanzaDalCentroLenz * cos(AnomaliaLenz)],[DistanzaDalCentroLenz * sin(AnomaliaLenz)],"xk","linewidth",Spessore);
plot([0,DistanzaDalCentroLenz * cos(AnomaliaLenz)],[0,DistanzaDalCentroLenz * sin(AnomaliaLenz)],"-k","linewidth",Spessore);
text([DistanzaDalCentroLenz * cos(AnomaliaLenz)] + dx,[DistanzaDalCentroLenz * sin(AnomaliaLenz)] + dy,{'e'},"fontsize",DimensioneCarattere);

plot([0,1],[0,0],"-b","linewidth",Spessore);
plot([0,0],[0,1],"-b","linewidth",Spessore);
plot([1],[0],">b","linewidth",Spessore);
plot([0],[1],"^b","linewidth",Spessore);
text([1,0] + dx, [0,1] + dy, {'e_1' 'e_2'},"fontsize",DimensioneCarattere);

plot([0,cos(Anomalia)],[0,sin(Anomalia)],"-r","linewidth",Spessore);
plot([0,-sin(Anomalia)],[0,cos(Anomalia)],"-r","linewidth",Spessore);
plot([cos(Anomalia)],[sin(Anomalia)],"^r","linewidth",Spessore);
plot([-sin(Anomalia)],[cos(Anomalia)],"<r","linewidth",Spessore);
text([cos(Anomalia),-sin(Anomalia)] + dx,[sin(Anomalia),cos(Anomalia)] + dy,{'e_\rho' 'e_\theta'},"fontsize",DimensioneCarattere);

IntervalloAnomalia = linspace(0,Anomalia,RisoluzioneAnomalia);
plot(RaggioAnomalia * cos(IntervalloAnomalia),RaggioAnomalia * sin(IntervalloAnomalia),".k");
text([RaggioAnomalia] + dx, [0] - dy, {'\theta'},"fontsize",DimensioneCarattere);
IntervalloAnomaliaLenz = linspace(0,AnomaliaLenz,RisoluzioneAnomaliaLenz);
plot(RaggioAnomaliaLenz * cos(IntervalloAnomaliaLenz),RaggioAnomaliaLenz * sin(IntervalloAnomaliaLenz),".b");
text([RaggioAnomaliaLenz] + dx, [0] - dy, {'\delta'},"fontsize",DimensioneCarattere);
IntervalloAnomaliaVera = linspace(AnomaliaLenz,AnomaliaVera + AnomaliaLenz,RisoluzioneAnomaliaVera);
plot(RaggioAnomaliaVera * cos(IntervalloAnomaliaVera),RaggioAnomaliaVera * sin(IntervalloAnomaliaVera),".g");
text([RaggioAnomaliaVera * cos(IntervalloAnomaliaVera(end/2))] + dx, [RaggioAnomaliaVera * sin(IntervalloAnomaliaVera(end/2))] + dy, {'\nu'},"fontsize",DimensioneCarattere);

print(Immagine, "Immagine_Keplero_AnomaliaVera.png");

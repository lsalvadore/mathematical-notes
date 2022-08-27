EstremoSinistro = -2.5;
EstremoDestro = 2.5;
EstremoAlto = 2.5;
EstremoBasso = -2.5;
Spessore = 2;
dx = 0.1;
dy = 0.1;
DimensioneCarattere = 15;
RaggioAnomalia = 0.3;
RisoluzioneAnomalia = 50;

Anomalia = pi/3;
DistanzaDalCentro = 2;

Immagine = figure("visible","off");
hold on;
axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

plot([DistanzaDalCentro * cos(Anomalia)],[DistanzaDalCentro * sin(Anomalia)],"xk","linewidth",Spessore);
plot([0,DistanzaDalCentro * cos(Anomalia)],[0,DistanzaDalCentro * sin(Anomalia)],"-k","linewidth",Spessore);
text([DistanzaDalCentro * cos(Anomalia),3 * DistanzaDalCentro/4 * cos(Anomalia)] + dx,[DistanzaDalCentro * sin(Anomalia),3 * DistanzaDalCentro/4 * sin(Anomalia)] + dy,{'X' '\rho'},"fontsize",DimensioneCarattere);

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

Intervallo = linspace(0,Anomalia,RisoluzioneAnomalia);
plot(RaggioAnomalia * cos(Intervallo),RaggioAnomalia * sin(Intervallo),".g");
text([RaggioAnomalia] + dx, [0] + dy, {'\theta'},"fontsize",DimensioneCarattere);

print(Immagine, "Immagine_Keplero.png");

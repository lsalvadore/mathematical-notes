SemilatoRetto1 = 0.6;
SemilatoRetto2 = 0.4;
SemilatoRetto = SemilatoRetto1 + SemilatoRetto2;
Eccentricita = 0.7;
SemiasseMaggiore1 = SemilatoRetto1/(1 - Eccentricita ^ 2);
SemiasseMaggiore2 = SemilatoRetto2/(1 - Eccentricita ^ 2);
SemidistanzaFocale1 = SemiasseMaggiore1 * Eccentricita;
SemidistanzaFocale2 = SemiasseMaggiore2 * Eccentricita;
Velocita1 = 1.2;
Velocita2 = 0.7;

EstremoDestro = SemilatoRetto + SemilatoRetto;
EstremoAlto = SemilatoRetto + 1;
EstremoSinistro = - SemilatoRetto/(1 - Eccentricita) - SemilatoRetto;
EstremoBasso = - EstremoAlto;

dx = 0.1;
dy = 0.1;
Spessore = 2;
DimensioneCarattere = 10;

AnomaliaVera1 = 2 * pi / 3;
AnomaliaVera2 = AnomaliaVera1 + pi;

Rotazione = [	cos(- AnomaliaVera1), 	- sin(- AnomaliaVera1);
		sin(- AnomaliaVera1),	cos(- AnomaliaVera1)	];

Immagine = figure("visible","off");
hold on;

axis("equal");
axis("off");

DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso);

[XX1 YY1] = OrbitaKeplero(SemilatoRetto1,Eccentricita,pi);
plot(XX1,YY1,".b");
[XX2 YY2] = OrbitaKeplero(SemilatoRetto2,Eccentricita,pi);
XX2 = XX2 + 2 * SemidistanzaFocale2;
plot(XX2,YY2,".r");

R1 = SemilatoRetto1 ./ ( 1 + Eccentricita * cos(AnomaliaVera1));
VettoreVelocita1 = R1 * [cos(AnomaliaVera1); sin(AnomaliaVera1)] + SemidistanzaFocale1;
VettoreVelocita1 = atan(- VettoreVelocita1(1)/VettoreVelocita1(2));
VettoreVelocita2 = VettoreVelocita1;
VettoreVelocita1 = - Velocita1 * [cos(VettoreVelocita1); sin(VettoreVelocita1)];
plot([0, R1 * cos(AnomaliaVera1)],[0,R1 * sin(AnomaliaVera1)],"-b","linewidth",Spessore);
plot([0, VettoreVelocita1(1)] + R1 * cos(AnomaliaVera1),[0,VettoreVelocita1(2)] + R1 * sin(AnomaliaVera1),"-b","linewidth",Spessore);
plot(R1 * cos(AnomaliaVera1),R1 * sin(AnomaliaVera1),"^b");
plot(VettoreVelocita1(1) + R1 * cos(AnomaliaVera1),VettoreVelocita1(2) + R1 * sin(AnomaliaVera1),"<b");
text([R1 * cos(AnomaliaVera1)/2],[R1 * sin(AnomaliaVera1) / 2],{'r_1'});
text(VettoreVelocita1(1) + R1 * cos(AnomaliaVera1) + dx,VettoreVelocita1(2) + R1 * sin(AnomaliaVera1) + dy,{'v_1'});

R2 = SemilatoRetto2 ./ ( 1 + Eccentricita * cos(AnomaliaVera2));
[OrdinataMinima, IndiceMinimo] = min(abs((Rotazione * ([XX2; YY2](:,end/2:end)))(2,:)));
IndiceMinimo = IndiceMinimo + size(XX2)(2)/2;
R2 = sqrt(XX2(IndiceMinimo) ^ 2 + YY2(IndiceMinimo) ^ 2);
VettoreVelocita2 = Velocita2 * [cos(VettoreVelocita2); sin(VettoreVelocita2)];
plot([0, XX2(IndiceMinimo)],[0,YY2(IndiceMinimo)],"-r","linewidth",Spessore);
plot(XX2(IndiceMinimo),YY2(IndiceMinimo),"vr");
plot([0, VettoreVelocita2(1)] + R2 * cos(AnomaliaVera2),[0,VettoreVelocita2(2)] + R2 * sin(AnomaliaVera2),"-r","linewidth",Spessore);
plot(VettoreVelocita2(1) + R2 * cos(AnomaliaVera2),VettoreVelocita2(2) + R2 * sin(AnomaliaVera2),">r");
text([XX2(IndiceMinimo)],[YY2(IndiceMinimo)],{'r_2'});
text(VettoreVelocita2(1) + R2 * cos(AnomaliaVera2) + dx,VettoreVelocita2(2) + R2 * sin(AnomaliaVera2) + dy,{'v_2'});

print(Immagine,"Immagine_2Corpi_Orbite.png");

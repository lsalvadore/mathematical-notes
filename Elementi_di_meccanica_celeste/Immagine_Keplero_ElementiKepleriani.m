SemiasseMaggiore = 1;
Eccentricita = 0.7;
Inclinazione = pi/3;
LongitudineDelNodoAscendente = pi/3;
ArgomentoDelPericentro = pi/4;
Inclinazione = pi/6;
LongitudineDelNodoAscendente = pi/3;
ArgomentoDelPericentro = pi/4;

SemilatoRetto = SemiasseMaggiore * (1 - Eccentricita^2);
SemilunghezzaLineaDeiNodi = 1.5 * SemiasseMaggiore;
MomentoAngolarePerUnitaDiMassa = 1.25 * SemiasseMaggiore;

RisoluzioneInclinazione = 50;
RisoluzioneLongitudineDelNodoAscendente = 50;
RisoluzioneArgomentoDelPericentro = 50;

RaggioInclinazione = SemiasseMaggiore/4;
RaggioLongitudineDelNodoAscendente = SemiasseMaggiore/2;
RaggioArgomentoDelPericentro = SemiasseMaggiore/4;

R1 = [	cos(ArgomentoDelPericentro),	- sin(ArgomentoDelPericentro),	0;
	sin(ArgomentoDelPericentro),	cos(ArgomentoDelPericentro),	0;
	0,	0,	1	];

R2 = [	1,	0,	0;
	0,	cos(Inclinazione),	- sin(Inclinazione);
	0	sin(Inclinazione),	cos(Inclinazione)	];

R3 = [	cos(LongitudineDelNodoAscendente),	- sin(LongitudineDelNodoAscendente),	0;
	sin(LongitudineDelNodoAscendente),	cos(LongitudineDelNodoAscendente),	0;
	0,	0,	1	];

R = R3 * R2 * R1;

EstremoAnteriore = SemiasseMaggiore;
EstremoDestro = SemiasseMaggiore;
EstremoAlto = SemiasseMaggiore;
EstremoPosteriore = - SemiasseMaggiore;
EstremoSinistro = - SemiasseMaggiore;
EstremoBasso = - SemiasseMaggiore;

Spessore = 2;

dx = SemiasseMaggiore/5;
dy = SemiasseMaggiore/5;
dz = SemiasseMaggiore/5;
DimensioneCarattere = 20;

[XXE YYE] = OrbitaKeplero(SemilatoRetto,Eccentricita,pi);
ZZE = zeros(size(XXE));
Orbita = R * [XXE;YYE;ZZE];
OrbitaAlta = [];
OrbitaBassa = [];
for k = 1:size(Orbita)(2)
	if(Orbita(3,k) >= 0)
		OrbitaAlta = [OrbitaAlta Orbita(:,k)];
	else
		OrbitaBassa = [OrbitaBassa Orbita(:,k)];
	endif
endfor

Immagine = figure("visible","off");
hold on;
axis("equal");
axis("off");

DisegnaAssi3(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso,EstremoAnteriore,EstremoPosteriore);
campos([EstremoAnteriore EstremoDestro/2 EstremoAlto/2]);
camtarget([0 0 0]);
camup([0 0 1]);

plot3(OrbitaAlta(1,:),OrbitaAlta(2,:),OrbitaAlta(3,:),".b");
plot3(OrbitaBassa(1,:),OrbitaBassa(2,:),OrbitaBassa(3,:),".c");

plot3(SemilunghezzaLineaDeiNodi * [cos(LongitudineDelNodoAscendente + pi), cos(LongitudineDelNodoAscendente)], SemilunghezzaLineaDeiNodi * [sin(LongitudineDelNodoAscendente + pi), sin(LongitudineDelNodoAscendente)], [0, 0], "-r", "linewidth", Spessore);
IntervalloLongitudineDelNodoAscendente = linspace(0,LongitudineDelNodoAscendente,RisoluzioneLongitudineDelNodoAscendente);
plot3(RaggioLongitudineDelNodoAscendente * cos(IntervalloLongitudineDelNodoAscendente), RaggioLongitudineDelNodoAscendente * sin(IntervalloLongitudineDelNodoAscendente), zeros(size(IntervalloLongitudineDelNodoAscendente)), ".r");
text([RaggioLongitudineDelNodoAscendente] + dx,[0] + dy,[0] + dz,{'\Omega'});

CoordinateLenz = R * [Eccentricita/2;0;0];
plot3([0,CoordinateLenz(1)],[0,CoordinateLenz(2)],[0,CoordinateLenz(3)],"-g","linewidth",Spessore);
IntervalloArgomentoDelPericentro = linspace(-ArgomentoDelPericentro,0,RisoluzioneArgomentoDelPericentro);
TracciaArgomentoDelPericentro = RaggioArgomentoDelPericentro * R * [cos(IntervalloArgomentoDelPericentro);sin(IntervalloArgomentoDelPericentro);zeros(size(IntervalloArgomentoDelPericentro))];
plot3(TracciaArgomentoDelPericentro(1,:),TracciaArgomentoDelPericentro(2,:),TracciaArgomentoDelPericentro(3,:),".g");
text([CoordinateLenz(1), TracciaArgomentoDelPericentro(1,1)] + dx, [CoordinateLenz(2), TracciaArgomentoDelPericentro(2,1)] + dy, [CoordinateLenz(3), TracciaArgomentoDelPericentro(3,1)] + dz, {'e' '\omega'})

CoordinateMomentoAngolarePerUnitaDiMassa = R * [0;0;MomentoAngolarePerUnitaDiMassa];
plot3([0,CoordinateMomentoAngolarePerUnitaDiMassa(1)],[0,CoordinateMomentoAngolarePerUnitaDiMassa(2)],[0,CoordinateMomentoAngolarePerUnitaDiMassa(3)],"-m","linewidth",Spessore);
TracciaMomentoAngolarePerUnitaDiMassa = R * [0;0;MomentoAngolarePerUnitaDiMassa];
IntervalloInclinazione = linspace(pi/2,pi/2 + Inclinazione,RisoluzioneInclinazione);
TracciaInclinazione = RaggioInclinazione * R3 * [zeros(size(IntervalloInclinazione));cos(IntervalloInclinazione);sin(IntervalloInclinazione)];
plot3(TracciaInclinazione(1,:),TracciaInclinazione(2,:),TracciaInclinazione(3,:),".m");
text([TracciaInclinazione(1,1)] + dx, [TracciaInclinazione(2,1)] + dy, [TracciaInclinazione(3,1)] + dz, {'i'});

print(Immagine,"Immagine_Keplero_ElementiKepleriani.png");

r = 10;
Vertice = [0; 25; 50];
Rapporto = 0.75;
Res = 1000;
Spessore = 10;
theta = pi/4;
pseudogamma_tangenza = floor(1/3 * (Res - 1) + 1);

alpha = linspace(0, 2 * pi, Res);
base = [	r * cos(alpha);
		r * sin(alpha);
		zeros(1, Res)	];

triangolo = [	zeros(1, 3);
		- r, r, Vertice(2);
		0, 0, Vertice(3)	];

phi1 = pi/2 - atan((triangolo(3,3) - triangolo(3,1))/(triangolo(2,3) - triangolo(2,1)));
phi3 = - pi/2 + phi1 + atan((triangolo(3,3) - triangolo(3,2))/(triangolo(2,3) - triangolo(2,2)));
T1 = [	1,	0,		0;
	0,	cos(phi1),	-sin(phi1);
	0,	sin(phi1),	cos(phi1)	];
T2 = [	1,	0,	0;	
	0,	-1,	0;
	0,	0,	1	];
T3 = [	1,	0,		0;
	0,	cos(phi3),	-sin(phi3);
	0,	sin(phi3),	cos(phi3)	];
T = Rapporto * inv(T1) * T3 * T2 * T1;

matriceVertice = kron(Vertice,ones(1,3));
triangolo2 = T * (triangolo - matriceVertice) + matriceVertice;

triangolo3 = [	base(:,pseudogamma_tangenza), base(:,pseudogamma_tangenza + Res/2), Vertice	];

R = [	cos(theta),		0,	-sin(theta);
	0,			1,	0;
	sin(theta),		0,	cos(theta)];

base = R * base;
matriceVertice = kron(Vertice,ones(1,Res));
base2 = R * (T * (base - matriceVertice) + matriceVertice);
triangolo = R * triangolo;
triangolo2 = R * triangolo2;
triangolo3 = R * triangolo3;
triangolo = [triangolo, triangolo(:,1)];
triangolo2 = [triangolo2, triangolo2(:,1)];

Immagine = figure("visible","off");
axis off;
hold on;
plot(base(2,:),base(3,:),".k");
plot(base2(2,:),base2(3,:),".r");
plot(triangolo(2,:),triangolo(3,:),"-b","linewidth",Spessore);
plot(triangolo2(2,:),triangolo2(3,:), "-r","linewidth",Spessore);
plot([triangolo3(2,1) triangolo3(2,3)],[triangolo3(3,1) triangolo3(3,3)], "-k","linewidth",Spessore);
plot(triangolo3(2,2:3),triangolo3(3,2:3), "-k","linewidth",Spessore);
print(Immagine, "Immagine_Apollonio_subcontraria.png");

EstremoAnteriore = 10;
EstremoDestro = 10;
EstremoAlto = 10;
EstremoPosteriore = -1;
EstremoSinistro = -1;
EstremoBasso = -1;

Spessore = 2;

dx = 2;
dy = 2;
dz = 2;
DimensioneCarattere = 20;

Massa1 = [8 9 2];
Massa2 = [-2 4 8];

Immagine = figure("visible","off");
hold on;
axis("equal");
axis("off");

DisegnaAssi3(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso,EstremoAnteriore,EstremoPosteriore);
campos([EstremoAnteriore EstremoDestro EstremoAlto]);
camtarget([0 0 0]);
camup([0 0 1]);

plot3([0;Massa1(1)],[0;Massa1(2)],[0;Massa1(3)],"-b","linewidth",Spessore);
plot3([0;Massa2(1)],[0;Massa2(2)],[0;Massa2(3)],"-b","linewidth",Spessore);
plot3([Massa1(1);Massa2(1)],[Massa1(2);;Massa2(2)],[Massa1(3);Massa2(3)],"-r","linewidth",Spessore);
plot3(Massa1(1),Massa1(2),Massa1(3),"vb");
plot3(Massa2(1),Massa2(2),Massa2(3),"^b");
plot3(Massa2(1),Massa2(2),Massa2(3),">r");
text([Massa1(1) Massa2(1) (Massa1(1) + Massa2(1))/2] + dx,[Massa1(2) Massa2(2) (Massa2(2) + Massa2(2))/1] + dy,[Massa1(3) Massa2(3) (Massa1(3) + Massa2(3))/2] + dz,{'\rho_1' '\rho_2' 'r'},"fontsize",DimensioneCarattere);

print(Immagine,"Immagine_2Corpi.png");

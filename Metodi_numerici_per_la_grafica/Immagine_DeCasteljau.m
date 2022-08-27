load tests/PuntiDiControllo_1
Risoluzione = 1000;

Bezier = DeCasteljau(PuntiDiControllo_1, linspace(0,1,Risoluzione)');

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;
plot(PuntiDiControllo_1(:,1),PuntiDiControllo_1(:,2),"-r");
plot(Bezier(:,1),Bezier(:,2),"-b");
print(Immagine, "Immagine_DeCasteljau.png");

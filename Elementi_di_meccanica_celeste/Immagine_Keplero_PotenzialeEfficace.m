EstremoDestro = 0.2; 
EstremoSinistro = 0;

AscissaSinistra = 0.01;
Risoluzione = 1000;

MomentoAngolarePerUnitaDiMassa = 1;
CostanteGravitazionale = 1;
MassaTotale = 40;

Immagine = figure("visible","off");
hold on;

axis("off");

PotenzialeEfficace = @(r) MomentoAngolarePerUnitaDiMassa ** 2./(2 * r .** 2) - CostanteGravitazionale * MassaTotale ./ r;

R = linspace(AscissaSinistra,EstremoDestro,Risoluzione);
V = PotenzialeEfficace(R);

plot(R,V,"-b");

DisegnaAssi(EstremoDestro,max(V),EstremoSinistro - 1/20 * EstremoDestro,min(V));

print(Immagine,"Immagine_Keplero_PotenzialeEfficace.png");

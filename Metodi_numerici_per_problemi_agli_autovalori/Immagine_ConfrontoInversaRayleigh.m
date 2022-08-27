load tests/Hermitiana_UnicoAutovaloreDiModuloMassimo

VettoreIniziale = ones(size(Hermitiana_UnicoAutovaloreDiModuloMassimo,1),1);
Tolleranza = 1e-14;

[AutovaloreInversa AutovettoreInversa ErroreInversa] = ...
  MetodoDiIterazioneInversa(Hermitiana_UnicoAutovaloreDiModuloMassimo, VettoreIniziale, 25, Tolleranza);
[AutovaloreRayleigh AutovettoreRayleigh ErroreRayleigh] = ...
MetodoDelQuozienteDiRayleigh(Hermitiana_UnicoAutovaloreDiModuloMassimo, VettoreIniziale, Tolleranza);

Immagine = figure("visible","off");
hold on;

semilogy(ErroreInversa,"-b;Metodo di iterazione inversa;");
semilogy(ErroreRayleigh,"-r;Metodo del quoziente di Rayleigh;");

print(Immagine, "Immagine_ConfrontoInversaRayleigh.png");

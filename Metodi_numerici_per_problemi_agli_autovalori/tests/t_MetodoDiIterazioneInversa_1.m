load Hermitiana_UnicoAutovaloreDiModuloMassimo;
[Autovalore Autovettore] = ...
MetodoDiIterazioneInversa(
  Hermitiana_UnicoAutovaloreDiModuloMassimo,
  ones(size(Hermitiana_UnicoAutovaloreDiModuloMassimo,1),1),
  - 0.3,
  10e-10)
abs(
  Hermitiana_UnicoAutovaloreDiModuloMassimo * Autovettore -
  Autovalore * Autovettore)

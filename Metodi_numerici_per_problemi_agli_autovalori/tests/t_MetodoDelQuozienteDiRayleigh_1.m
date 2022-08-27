load Hermitiana_UnicoAutovaloreDiModuloMassimo;
[Autovalore Autovettore] = ...
MetodoDelQuozienteDiRayleigh(
  Hermitiana_UnicoAutovaloreDiModuloMassimo,
  ones(size(Hermitiana_UnicoAutovaloreDiModuloMassimo,1),1),
  10e-10)
abs(
  Hermitiana_UnicoAutovaloreDiModuloMassimo * Autovettore -
  Autovalore * Autovettore)

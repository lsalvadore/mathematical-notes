load Hermitiana_UnicoAutovaloreDiModuloMassimo;
n = size(Hermitiana_UnicoAutovaloreDiModuloMassimo,1);
NumeroDiVettori = 3;
VettoriIniziali = eye(n)(:,1:NumeroDiVettori);
Autovalori = ...
MetodoDiIterazioneDiSottospazi(
  Hermitiana_UnicoAutovaloreDiModuloMassimo,
  VettoriIniziali,
  10e-10)
Autovalori - sort(eig(Hermitiana_UnicoAutovaloreDiModuloMassimo),"descend")(1:NumeroDiVettori)

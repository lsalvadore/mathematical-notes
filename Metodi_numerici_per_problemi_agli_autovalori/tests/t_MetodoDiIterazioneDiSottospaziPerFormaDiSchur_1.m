load Hermitiana_UnicoAutovaloreDiModuloMassimo;
NumeroDiVettori = 3;
Schur = ...
MetodoDiIterazioneDiSottospaziPerFormaDiSchur(
  Hermitiana_UnicoAutovaloreDiModuloMassimo,
  10e-15)
Schur - schur(Hermitiana_UnicoAutovaloreDiModuloMassimo)

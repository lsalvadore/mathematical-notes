load Diagonalizzabile_AutovaloriMultipli;
n = size(Diagonalizzabile_AutovaloriMultipli,1);
NumeroDiVettori = 6;
VettoriIniziali = eye(n)(:,1:NumeroDiVettori);
Autovalori = ...
MetodoDiIterazioneDiSottospazi(
  Diagonalizzabile_AutovaloriMultipli,
  VettoriIniziali,
  10e-10)
Autovalori - sort(eig(Diagonalizzabile_AutovaloriMultipli),"descend")(1:NumeroDiVettori)

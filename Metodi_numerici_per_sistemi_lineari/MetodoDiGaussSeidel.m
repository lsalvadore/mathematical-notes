function Soluzione = ...
MetodoDiGaussSeidel(Matrice, TermineNoto, Tolleranza, MaxIterazioni = 1000)
  n = size(Matrice,1);
  Inferiore = - tril(Matrice,- 1);
  Diagonale = diag(diag(Matrice));
  Superiore = - triu(Matrice,1);
  InversaDiagonaleMenoInferiore = inv(Diagonale - Inferiore);
  MatriceDiIterazione = InversaDiagonaleMenoInferiore * Superiore;
  Traslazione = InversaDiagonaleMenoInferiore * TermineNoto;
  Soluzione = ones(n,1);
  for iter=1:MaxIterazioni
    Soluzione = MatriceDiIterazione * Soluzione + Traslazione;
    if norm(Matrice * Soluzione - TermineNoto) < Tolleranza
      break;
    endif
  endfor
endfunction

function Soluzione = ...
MetodoDiJacobi(Matrice, TermineNoto, Tolleranza, MaxIterazioni = 1000)
  n = size(Matrice,1);
  Inferiore = - tril(Matrice,- 1);
  Diagonale = diag(diag(Matrice));
  Superiore = - triu(Matrice,1);
  InversaDiagonale = inv(Diagonale);
  MatriceDiIterazione = InversaDiagonale * (Inferiore + Superiore);
  Traslazione = InversaDiagonale * TermineNoto;
  Soluzione = ones(n,1);
  for iter=1:MaxIterazioni
    Soluzione = MatriceDiIterazione * Soluzione + Traslazione;
    if norm(Matrice * Soluzione - TermineNoto) < Tolleranza
      break;
    endif
  endfor
endfunction

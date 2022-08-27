function [L U P] = FattorizzazioneLUP(Matrice)
  [n m] = size(Matrice);
  Identita = eye(n);
  L = Identita;
  U = Matrice;
  P = Identita;
  for j = 1:min([n m])
    [Massimo Indice] = max(abs(U(j:end,j)));
    if Massimo == 0
      return;
    endif
    Indice = Indice + j - 1;
    if(abs(Matrice(j,j)) != Massimo)
      MatriceDiPermutazione = Identita;
      Riga = MatriceDiPermutazione(Indice,:);
      MatriceDiPermutazione(Indice,:) = MatriceDiPermutazione(j,:);
      MatriceDiPermutazione(j,:) = Riga;
      U = MatriceDiPermutazione * U;
      P = MatriceDiPermutazione * P;
      L = MatriceDiPermutazione' * L * MatriceDiPermutazione;
    endif
    TriangolareInferiore = ...
      Identita - [zeros(j,1); U(j + 1:end,j)/U(j,j)] * Identita(:,j)';
    TriangolareInferioreInversa = TriangolareInferiore;
    TriangolareInferioreInversa(j + 1:end,j) = ...
      - TriangolareInferioreInversa(j + 1:end,j);
    L = L * TriangolareInferioreInversa;
    U = TriangolareInferiore * U;
  endfor
endfunction

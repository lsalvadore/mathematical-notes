function [L U] = FattorizzazioneLU(Matrice)
  [n m] = size(Matrice);
  L = eye(n);
  U = Matrice;
  for j = 1:min([n m])
    Colonna = U(j:end,j);
    if Colonna(1) == 0
      continue;
    endif
    Vettore = [0; Colonna(2:end)/Colonna(1)];
    PrimoVettoreBaseCanonica = zeros(size(Vettore));
    PrimoVettoreBaseCanonica(1) = 1;
    Gauss = eye(n - j + 1) - Vettore * PrimoVettoreBaseCanonica';
    GaussInversa = Gauss;
    GaussInversa(2:end,1) = - GaussInversa(2:end,1);
    Fattore = [ eye(j - 1), zeros(j - 1, n - j + 1);
                zeros(n - j + 1,j - 1), Gauss ];
    FattoreInversa = [  eye(j - 1), zeros(j - 1, n - j + 1);
                        zeros(n - j + 1,j - 1), GaussInversa  ];
    L = L * FattoreInversa;
    U = Fattore * U;
  endfor
endfunction

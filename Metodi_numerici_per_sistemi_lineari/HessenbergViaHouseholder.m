function [Q H] = HessenbergViaHouseholder(Matrice)
  [n m] = size(Matrice);
  Q = eye(n);
  H = Matrice;
  for j = 1:min([n m]) - 1
    Colonna = H(j + 1:end,j);
    Alpha = (norm(Colonna,2) ^ 2 + abs(Colonna(1)) * norm(Colonna,2)) ^ (-1);
    Vettore = Colonna;
    if Colonna(1) == 0
      Vettore(1) = norm(Colonna,2);
    else
      Vettore(1) = (1 + norm(Colonna,2)/abs(Colonna(1))) * Colonna(1);
    endif
    Householder = eye(n - j) - Alpha * Vettore * Vettore';
    Fattore = [ eye(j), zeros(j, n - j);
                zeros(n - j,j), Householder ];
    Q = Q * Fattore;
    H = Fattore * H * Fattore;
  endfor
endfunction

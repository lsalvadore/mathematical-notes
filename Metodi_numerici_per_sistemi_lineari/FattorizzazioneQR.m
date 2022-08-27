function [Q R] = FattorizzazioneQR(Matrice)
  [n m] = size(Matrice);
  Q = eye(n);
  R = Matrice;
  for j = 1:min([n m])
    Colonna = R(j:end,j);
    Alpha = (norm(Colonna,2) ** 2 + abs(Colonna(1)) * norm(Colonna,2)) ** (-1);
    Vettore = Colonna;
    if Colonna(1) == 0
      Vettore(1) = norm(Colonna,2);
    else
      Vettore(1) = (1 + norm(Colonna,2)/abs(Colonna(1))) * Colonna(1);
    endif
    Householder = eye(n - j + 1) - Alpha * Vettore * Vettore';
    Fattore = [ eye(j - 1), zeros(j - 1, n - j + 1);
                zeros(n - j + 1,j - 1), Householder ];
    Q = Q * Fattore;
    R = Fattore * R;
  endfor
endfunction

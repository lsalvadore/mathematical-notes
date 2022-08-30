function [Q R] = OrtonormalizzaColonne(Matrice)
  [n m] = size(Matrice);
  R = Matrice;
  NumeroDiFattori = 0;
  for j = 1:min([n m])
    Colonna = R(j:end,j);
    Alpha = (norm(Colonna,2) ^ 2 + abs(Colonna(1)) * norm(Colonna,2)) ^ (-1);
    Vettore = Colonna;
    if Colonna(1) == 0
      Vettore(1) = norm(Colonna,2);
    else
      Vettore(1) = (1 + norm(Colonna,2)/abs(Colonna(1))) * Colonna(1);
    endif
    Householder = eye(n - j + 1) - Alpha * Vettore * Vettore';
    Fattore = [ eye(j - 1), zeros(j - 1, n - j + 1);
                zeros(n - j + 1,j - 1), Householder ];
    NumeroDiFattori = NumeroDiFattori + 1;
    Fattori(:,:,NumeroDiFattori) = Fattore;
    R = Fattore * R;
  endfor
  [Massimo Indice] = max(sum(VerificaSeZero(R),2));
  Indice = Indice - 1;
  if Massimo != m
    Indice = n;
  endif 
  Q = [eye(Indice); zeros(n - Indice,Indice)];
  for l = NumeroDiFattori:-1:1
    Q = Fattori(:,:,l) * Q;
  endfor
  R = R(1:Indice,1:m);
endfunction

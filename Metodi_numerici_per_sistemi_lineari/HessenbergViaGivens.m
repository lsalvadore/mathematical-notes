function [Q H] = HessenbergViaGivens(Matrice)
  [n m] = size(Matrice);
  Q = eye(n);
  H = Matrice;
  for j = 1:min([n m]) - 2
    for k = n:-1:j + 2
      Givens = eye(n);
      Givens(k - 1:k,k - 1:k) = planerot([H(k - 1,j);H(k,j)]);
      Q = Givens * Q;
      H = Givens * H * Givens;
    endfor
  endfor
endfunction

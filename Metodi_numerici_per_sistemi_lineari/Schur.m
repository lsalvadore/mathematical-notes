function [Triangolare Unitaria] = Schur(Matrice)
  n = size(Matrice,1);
  if n == 1
    Unitaria = eye(1);
    Triangolare = Matrice;
  else
    [Autovettori Autovalori] = eig(Matrice);
    Alpha = (norm(Autovettori(:,1),2) ** 2 + ...
            abs(Autovettori(1,1)) * norm(Autovettori(:,1),2)) ** (-1);
    Vettore = Autovettori(:,1);
    if Autovettori(1,1) == 0
      Vettore(1) = norm(Autovettori(:,1),2);
    else
      Vettore(1) = ...
      (1 + norm(Autovettori(:,1),2)/abs(Autovettori(1,1))) * Autovettori(1,1);
    endif
    Householder = eye(n) - Alpha * Vettore * Vettore';
    Householder = (Householder * Autovettori(:,1))(1) ** (- 1) * Householder;
    MatricePerInduzione = Householder' * Matrice * Householder;
    [TriangolarePerInduzione UnitariaPerInduzione] = ...
      Schur(MatricePerInduzione(2:end,2:end));
    Unitaria = Householder * [  1, zeros(1,n - 1);
                                zeros(n - 1, 1), UnitariaPerInduzione ];
    Triangolare = ...
      [ Autovalori(1,1), MatricePerInduzione(1,2:end) * UnitariaPerInduzione';
        zeros(n - 1,1), TriangolarePerInduzione ];
  endif
endfunction

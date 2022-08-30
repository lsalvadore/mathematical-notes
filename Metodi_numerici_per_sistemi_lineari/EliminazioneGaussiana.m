function Matrice = EliminazioneGaussiana(Matrice)
  [n m] = size(Matrice);
  for j = 1:min([n m])
    [Massimo Indice] = max(abs(Matrice(j:end,j)));
    Indice = Indice + j - 1;
    if Massimo == 0
      continue;
    endif
    Riga = Matrice(Indice,:);
    Matrice(Indice,:) = Matrice(j,:);
    Matrice(j,:) = Riga;
    Matrice(j,:) = Matrice(j,j) ^ (-1) * Matrice(j,:);
    for k = j + 1:n
      Matrice(k,:) = Matrice(k,:) - Matrice(k,j) * Matrice(j,:);
    endfor
  endfor
endfunction

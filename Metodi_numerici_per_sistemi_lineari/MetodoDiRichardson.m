function Soluzione = ...
MetodoDiRichardson(Matrice, TermineNoto, Parametro, Tolleranza, ...
MaxIterazioni = 1000)
  Soluzione = ones(size(Matrice,1),1);
  for iter=1:MaxIterazioni
    Soluzione = Soluzione - ...
        Parametro * (Matrice * Soluzione - TermineNoto);
    if norm(Matrice * Soluzione - TermineNoto) < Tolleranza
      break;
    endif
  endfor
endfunction

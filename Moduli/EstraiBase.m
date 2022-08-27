function Base = EstraiBase(Generatori)
% La funzione restituisce una matrice Base le cui colonne costituiscono una base per lo
% spazio generato dalle colonne di Generatori. Inoltre tutte le colonne di Base sono colonne
% di Generatori, ordinate nello stesso ordine.
  Base = Generatori(:,1);
  CardinalitaDellaBase = 1;
  for j = 2:size(Generatori,2)
    Temporanea = [Base, Generatori(:,j)];
    if rank(Temporanea) > CardinalitaDellaBase
      Base = Temporanea;
      CardinalitaDellaBase = CardinalitaDellaBase + 1;
    endif
  endfor
endfunction

function [Autovalori Errore] = ...
MetodoDiIterazioneDiSottospazi ...
(Matrice, VettoriIniziali, Tolleranza, MaxIterazioni = 1000)
  n = size(VettoriIniziali,2);
  Ortogonali = OrtonormalizzaColonne(VettoriIniziali);
  Errore = [];
  for iter=1:MaxIterazioni
    Ortogonali = OrtonormalizzaColonne(Matrice * Ortogonali);
    Autovalori = sort(eig(Ortogonali' * Matrice * Ortogonali),"descend");
    Errore = ...
      [Errore; norm(Autovalori - sort(eig(Matrice),"descend")(1:n))];
    if Errore(end) < Tolleranza
      break;
    endif
  endfor
endfunction

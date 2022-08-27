function [Schur Autovalori Errore] = ...
MetodoDiIterazioneDiSottospaziPerFormaDiSchur...
(Matrice, Tolleranza, MaxIterazioni = 1000)
  n = size(Matrice,2);
  Ortogonali = eye(n);
  Errore = [];
  OctaveSchur = schur(Matrice);
  for iter=1:MaxIterazioni
    Ortogonali = OrtonormalizzaColonne(Matrice * Ortogonali);
    Schur = Ortogonali' * Matrice * Ortogonali;
    Errore = ...
      [Errore; norm(OctaveSchur - Schur)];
    if Errore(end) < Tolleranza
      break;
    endif
  endfor
endfunction

function [Schur Autovalori Errore] = ...
ProtometodoQR(Matrice, Tolleranza, MaxIterazioni = 1000)
  Schur = Matrice;
  Errore = [];
  OctaveSchur = schur(Matrice);
  for iter=1:MaxIterazioni
    [Q R] = FattorizzazioneQR(Schur);
    Schur = R * Q;
    Errore = ...
      [Errore; norm(OctaveSchur - Schur)];
    if Errore(end) < Tolleranza
      break;
    endif
  endfor
endfunction

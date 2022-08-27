function [Autovalore Autovettore Errore] = ...
MetodoDellePotenze(Matrice, VettoreIniziale, Tolleranza, MaxIterazioni = 1000)
  n = size(Matrice,1);
  Autovettore = VettoreIniziale;
  Autovalore = Autovettore' * Matrice * Autovettore;
  Errore = [];
  for iter=1:MaxIterazioni
    AutovettoreAusiliario = Matrice * Autovettore;
    Autovettore = AutovettoreAusiliario/norm(AutovettoreAusiliario);
    AutovalorePrecedente = Autovalore;
    Autovalore = Autovettore' * Matrice * Autovettore;
    Errore = ...
      [Errore; norm(Matrice * Autovettore - Autovalore * Autovettore)];
    if Errore(end) < Tolleranza
      break;
    endif
  endfor
endfunction

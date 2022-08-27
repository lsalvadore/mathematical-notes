function [Autovalore Autovettore Errore] = ...
MetodoDiIterazioneInversa(Matrice, VettoreIniziale, Scalare, Tolleranza, MaxIterazioni = 1000)
  n = size(Matrice,1);
  Autovettore = VettoreIniziale;
  MatriceAusiliaria = Matrice -  Scalare * eye(n);
  Autovalore = Autovettore' * Matrice * Autovettore;
  Errore = [];
  for iter=1:MaxIterazioni
    AutovettoreAusiliario = MatriceAusiliaria \ Autovettore;
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

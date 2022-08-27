function [Autovalore Autovettore Errore] = ...
MetodoDelQuozienteDiRayleigh(Matrice, VettoreIniziale, Tolleranza, MaxIterazioni = 1000)
  n = size(Matrice,1);
  Autovettore = VettoreIniziale;
  Autovalore = Autovettore' * Matrice * Autovettore;
  Errore = [];
  for iter=1:MaxIterazioni
    QuozienteDiRayleigh = (Autovettore' * Matrice * Autovettore) / ...
      (Autovettore' * Autovettore);
    MatriceAusiliaria = Matrice - QuozienteDiRayleigh * eye(n);
    if rcond(MatriceAusiliaria) < eps * 10 % MatriceAusiliaria singolare
      break
    endif
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

function Matrice = VerificaSeZero(Matrice)
% Questa funzione indica quali elementi di Matrice sono nulli:
% essa può essere utilizzata in quei casi in cui gli errori di
% approssimazione generano risultati piccolissimi anziché nulli.
  Matrice = abs(Matrice) < 100 * eps;
endfunction

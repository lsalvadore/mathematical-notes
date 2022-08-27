function Soluzione = SostituzioneAllIndietro(Matrice,TermineNoto)
% Risolve il sistema lineare definito dalla matrice triangolare superiore
% Matrice e dal termine noto TermineNoto restituendone, se esiste, una
% soluzione.
[Righe Colonne] = size(Matrice);
Soluzione = ones(Colonne,1);
Riga = Righe;
[Massimo Colonna] = max(Matrice(Riga,:) != 0);
if Matrice(Riga,Colonna)
  Soluzione(Colonna) = TermineNoto(Riga)/Matrice(Riga,Colonna);
endif
for Riga = Righe - 1:-1:1
  [Massimo Colonna] = max(Matrice(Riga,:) != 0);
  if Matrice(Riga,Colonna)
    Soluzione(Colonna) = ...
      TermineNoto(Riga) - ...
      Matrice(Riga,Colonna + 1:end) * Soluzione(Colonna + 1:end);
    Soluzione(Colonna) = Soluzione(Colonna)/Matrice(Riga,Colonna);
  endif
endfor

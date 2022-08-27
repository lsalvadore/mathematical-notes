load Rettangolare_Triangolare_1;
[Righe Colonne] = size(Rettangolare_Triangolare_1);
TermineNoto = ones(Righe,1);
TermineNoto(Colonne + 1:end) = 0;
Soluzione = SostituzioneAllIndietro(Rettangolare_Triangolare_1, TermineNoto);
Rettangolare_Triangolare_1 * Soluzione - TermineNoto

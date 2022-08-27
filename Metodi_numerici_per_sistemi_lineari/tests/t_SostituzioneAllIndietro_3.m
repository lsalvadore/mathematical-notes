load Rettangolare_Triangolare_2;
TermineNoto = ones(size(Rettangolare_Triangolare_2,1),1);
Soluzione = SostituzioneAllIndietro(Rettangolare_Triangolare_2, TermineNoto);
Rettangolare_Triangolare_2 * Soluzione - TermineNoto

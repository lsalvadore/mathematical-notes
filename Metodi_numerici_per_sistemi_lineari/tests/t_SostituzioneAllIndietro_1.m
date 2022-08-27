load Quadrata_Triangolare;
TermineNoto = ones(size(Quadrata_Triangolare,1),1);
Soluzione = SostituzioneAllIndietro(Quadrata_Triangolare, TermineNoto);
Quadrata_Triangolare * Soluzione - TermineNoto

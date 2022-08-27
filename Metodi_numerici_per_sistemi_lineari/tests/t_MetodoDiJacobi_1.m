load Quadrata_FortementeDominanteDiagonale_1;
TermineNoto = (1:size(Quadrata_FortementeDominanteDiagonale_1,1))';
Soluzione = MetodoDiJacobi(Quadrata_FortementeDominanteDiagonale_1,TermineNoto,1e-10)
Quadrata_FortementeDominanteDiagonale_1 * Soluzione - TermineNoto

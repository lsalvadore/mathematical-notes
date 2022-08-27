AVL *RuotaOraria(AVL Perno)
{
	AVL FiglioDestro = Perno.Figliosinistro;
	Perno.FiglioDestro = FiglioDestro.AlberoSinistro;
	FiglioDestro.AlberoSinistro = Perno;
	Perno.Altezza = max(Altezza(Perno.AlberoDestro),Altezza(Perno.AlberoSinistro)) + 1;
	FiglioDestro.Altezza = max(Altezza(FiglioDestro.AlberoDestro),Altezza(FiglioSinitro.AlberoSinistro)) + 1;
	return FiglioDestro;
}

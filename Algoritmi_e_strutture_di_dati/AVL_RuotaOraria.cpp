AVL *RuotaOraria(AVL Perno)
{
	AVL FiglioSinistro = Perno.Figliosinistro;
	Perno.FiglioSinistro = FiglioSinistro.AlberoDestro;
	FiglioSinistro.AlberoDestro = Perno;
	Perno.Altezza = max(Altezza(Perno.AlberoSinistro),Altezza(Perno.AlberoDestro)) + 1;
	FiglioSinistro.Altezza = max(Altezza(FiglioSinistro.AlberoSinistro),Altezza(FiglioSinitro.AlberoDestro)) + 1;
	return FiglioSinistro;
}

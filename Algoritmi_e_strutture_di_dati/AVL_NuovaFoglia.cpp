AVL *NuovaFoglia(int NuovoElemento)
{
	Radice = NuovoNodo();
	Radice.Dato = NuovoElemento;
	Radice.Altezza = 0;
	Radice.AlberoSinistro = NULL;
	Radice.AlberoDestro = NULL;
	return Radice;
}

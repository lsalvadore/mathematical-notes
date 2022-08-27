AVL *Inserisci(AVL *Radice, int NuovoElemento)
{
	if(!Radice)
	return NuovaFoglia(NuovoElemento);
	else if(NuovoElemento.Chiave < Radice.Dato.Chiave)
	{
		Radice.AlberoSinistro =
		Inserisci(Radice.AlberoSinistro, NuovoElemento);
		if(Altezza(Radice.AlberoSinistro) - Altezza(Radice.AlberoDestro) == 2)
		{
			if(NuovoDato.Chiave > Radice.AlberoSinistro.Dato.Chiave)
			Radice.AlberoSinistro = RuotaAntiOraria(Radice.AlberoSinistro);
			Radice = RuotaOraria(Radice);
		}
	}
	else if(NuovoElemento.Chiave > Radice.Dato.Chiave)
	{
		Radice.AlberoDestro =
		Inserisci(Radice.AlberoDestro, NuovoElemento);
		if(Altezza(Radice.AlberoDestro) - Altezza(Radice.AlberoSinistro) == 2)
		{
			if(NuovoDato.Chiave < Radice.AlberoSinistro.Dato.Chiave)
			Radice.AlberoDestro = RuotaAntiOraria(Radice.AlberoDestro);
			Radice = RuotaAntiOraria(Radice);
		}
	}
	Radice.Altezza = max(Altezza(Radice.AlberoSinistro),Altezza(Radice.AlberoDestro));
	return Radice;
}

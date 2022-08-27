Albero *Inserisci(Albero *Radice, int NuovoElemento)
{
	if(!Radice)
	{
		Radice = NuovoNodo();
		Radice.dato = NuovoElemento;
		Radice.AlberoSinistro = NULL;
		Radice.AlberoDestro = NULL;
	}
	else if(NuovoElemento.Chiave < Radice.Dato.Chiave)
	Radice.AlberoSinistro = Inserisci(Radice.AlberoSinistro,NuovoElemento);
}
	else if(NuovoElemento.Chiave > Radice.Dato.Chiave)
	Radice.AlberoDestro = Inserisci(Radice.AlberoDestro,NuovoElemento);
	return Radice;
}

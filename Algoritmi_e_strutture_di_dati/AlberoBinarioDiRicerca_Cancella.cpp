Albero *Cancella(Albero *Radice,int Cancellando)
{
	if(Radice)
	{
		if(Radice.dato.chiave == Cancellando)
		{
			if(!Radice.AlberoSinistro)
			Radice = Radice.AlberoDestro;
			else if(!Radice.AlberoDestro)
			Radice = Radice.AlberoSinistro;
			else
			{
				Duplicato =
				MinimoSottoAlbero(Radice.AlberoDestro);
				Albero.dato = Duplicato.dato;
				Radice.AlberoDestro =
				Cancella(Radice.AlberoDestro,Duplicato.Dato.Chiave)
			}
		}
		else if(Cancellando < Radice.Dato.Chiave)
		{
			Radice.AlberoSinistro = Cancella(Radice.AlberoSinistro, Cancellando);
		}
		else if(Cancellando < Radice.Dato.Chiave)
		{
			Radice.AlberoDestro = Cancella(Radice.AlberoDestro, Cancellando);
		}
	}
	return Radice;
}

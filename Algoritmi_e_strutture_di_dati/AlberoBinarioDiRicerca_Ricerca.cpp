Albero *Ricerca(Albero *Radice,int Ricercato)
{
	if(!Radice) return NULL;
	if(Ricercato == Radice.dato.chiave)
	return Radice.dato;
	else if(Ricercato < Radice.dato.chiave)
	return Ricerca(Radice.AlberoSinistro,Ricercato);
	else
	return Ricerca(Radice.AlberoDestro,Ricercato);
}

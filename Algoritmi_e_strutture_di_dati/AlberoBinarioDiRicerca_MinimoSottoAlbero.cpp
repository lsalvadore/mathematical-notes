Albero *MinimoSottoAlbero(Albero Radice)
{
	while(Radice.AlberoSinistro)
	Radice = Radice.AlberoSinistro;
	return Radice;
}

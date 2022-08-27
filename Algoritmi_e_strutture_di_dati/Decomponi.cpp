int Decomponi(Albero Radice)
{
/*
 *	La funzione Decomponi risolve un problema decomponibile
 *	sull'albero binario Radice. Si presuppone che siano
 *	definite una costante ValoreDelBasoBase e una funzione
 *	int Ricombina(int, int).
 *	In questo esempio abbiamo supposto che il problema debba
 *	restituire un dato di tipo int, ma qualsasi tipo può essere
 *	usato.
 */
	if(!Radice) return ValoreDelCasoBase;
	else
	{
		int	ValoreSinistro =
			Decomponi(Radice->AlberoSinistro),
			ValoreDestro =
			Decomponi(Radice->AlberoSinistro);
		return Ricombina(ValoreSinistro,ValoreDestro);
	}
}

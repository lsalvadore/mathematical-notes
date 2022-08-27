void Risolvi(Input)
{
	if(Cardinalita(Input) <= MassimoCasoBase)
	CalcolaCasoBase(Input);
	else
	{
		Coda Sottoproblemi = Dividi(Input);
		Coda Soluzioni;
		while(Sottoproblemi)
		Soluzioni.Aggiungi(Risolvi(Sottoproblemi.Estrai()));
		Combina(Soluzioni);
	}
}

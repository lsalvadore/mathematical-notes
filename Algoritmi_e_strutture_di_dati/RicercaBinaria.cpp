int RicercaBinaria
(int Array[], int Ricercato, int EstremoSinistro, int EstremoDestro)
{
	if(EstremoSinistro == EstremoDestro)
	{
		if(Ricercato == Array[EstremoSinistro])
			return EstremoSinistro;
		else return -1;
	}
	int Centro = (EstremoSinistro + EstremoDestro)/2;
	if(Ricercato <= Array[Centro])
	return RicercaBinaria(Array,Ricercato,EstremoSinistro,Centro);
	else
	return RicercaBinaria(Array,Ricercato,Centro + 1,EstremoDestro);
}

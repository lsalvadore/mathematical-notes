void MergeSort(int Array[], int EstremoSinistro, int EstremoDestro);
void Fondi(int Array[], int EstremoSinistro, int Centro, int EstremoDestro);

void MergeSort(int Array[], int EstremoSinistro, int EstremoDestro)
{
/*
 * La funzione MergeSort ordina l'array Array[] di n interi con
 * l'omonimo algoritmo.
 */
	if(EstremoSinistro < EstremoDestro)
	{
		int Centro = (EstremoSinistro + EstremoDestro)/2;
		MergeSort(Array,EstremoSinistro,Centro);
		MergeSort(Array,Centro + 1,EstremoDestro);
		Fondi(Array,EstremoSinistro,Centro,EstremoDestro);
	}	
}

void Fondi(int Array[], int EstremoSinistro, int Centro, int EstremoDestro)
{
	int	i = EstremoSinistro,
		j = Centro + 1,
		k = 0,
		ArrayAusiliario[EstremoDestro - EstremoSinistro + 1];
	for(;(i <= Centro) && (j <= EstremoDestro);k++)
	{
		if(Array[i] <= Array[j]) ArrayAusiliario[k] = Array[i++];
		else ArrayAusiliario[k] = Array[j++];
	}
	for(;i <= Centro;k++)
		ArrayAusiliario[k] = Array[i++];
	for(;j <= EstremoDestro;k++)
		ArrayAusiliario[k] = Array[j++];
	for(i = EstremoSinistro; i <= EstremoDestro;i++)
		Array[i] = ArrayAusiliario[i - EstremoSinistro];
}

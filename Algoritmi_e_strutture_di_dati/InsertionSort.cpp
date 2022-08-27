void InsertionSort(int Array[], int n)
{
/*
 * La funzione InsertionSort ordina l'array Array[] di n interi con
 * l'omonimo algoritmo.
 */
	int	ProssimoElemento,
		i,
		j;
	for(i = 1; i < n; i++)
	{
		ProssimoElemento = Array[i];
		for(j = i; j > 0 && (Array[j - 1] > ProssimoElemento); j--)
		{
			Array[j] = Array[j - 1];
		}
		Array[j] = ProssimoElemento;
	}
}

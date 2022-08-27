void SelectionSort(int Array[], int n)
{
/*
 * La funzione SelectionSort ordina l'array Array[] di n interi con
 * l'omonimo algoritmo.
 */
	int	IndiceDelMinimo,
		Minimo,
		i,
		j;
	for(i = 0; i < n - 1; i++)
	{
		IndiceDelMinimo = i;
		Minimo = Array[i];
		for(j = i + 1; j < n; j++)
		{
			if(Array[j] < Minimo)
			{
				IndiceDelMinimo = j;
				Minimo = Array[j];
			}
		}
		Array[IndiceDelMinimo] = Array[i];
		Array[i] = Minimo;
	}
}

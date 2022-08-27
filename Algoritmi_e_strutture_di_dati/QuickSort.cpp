void QuickSort(int Array[], int EstremoSinistro, int EstremoDestro);
int ScegliPivot(int EstremoSinistro, int EstremoDestro);
int Distribuisci(int Array[],int EstremoSinistro,int Pivot, int EstremoDestro);
void ScambiaInteri(int *A, int *B);

void QuickSort(int Array[], int EstremoSinistro, int EstremoDestro)
{
/*
 * La funzione QucikSort ordina l'array Array[] di n interi con
 * l'omonimo algoritmo.
 */
	if(EstremoSinistro < EstremoDestro)
	{
		int Pivot = ScegliPivot(EstremoSinistro,EstremoDestro);
		Pivot =
		Distribuisci(Array,EstremoSinistro,Pivot,EstremoDestro);
		QuickSort(Array,EstremoSinistro,Pivot - 1);
		QuickSort(Array,Pivot + 1,EstremoDestro);
	}
}

int ScegliPivot(int EstremoSinistro, int EstremoDestro)
{
	return (EstremoSinistro + EstremoDestro)/2;
}

int Distribuisci(int Array[],int EstremoSinistro,int Pivot, int EstremoDestro)
{
	if(Pivot != EstremoDestro)
		ScambiaInteri(&(Array[Pivot]),&(Array[EstremoDestro]));
	int     i = EstremoSinistro,
		j = EstremoDestro - 1;
	while(i <= j)
	{
		while((i <= j) && Array[i] <= Array[EstremoDestro]) i++;
		while((i <= j) && Array[j] >= Array[EstremoDestro]) j--;
		if(i < j) ScambiaInteri(&(Array[i]),&(Array[j]));
	}
	ScambiaInteri(&(Array[i]), &(Array[EstremoDestro]));
	return i;
}

void ScambiaInteri(int *A, int *B)
{
	int C = *A;
	*A = *B;
	*B = C;
}

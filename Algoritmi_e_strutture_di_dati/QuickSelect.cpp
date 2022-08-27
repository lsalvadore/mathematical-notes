int ScegliPivot(int EstremoSinistro, int EstremoDestro);
int Distribuisci(int Array[],int EstremoSinistro,int Pivot, int EstremoDestro);

int QuickSelect(int Array[], int EstremoSinistro, int EstremoDestro, int k)
{
/*
 * La funzione QuickSelect restituisce l'n-esimo elemento dell'array
 * di interi Array non secondo l'ordine di indicizzazione dell'array, ma
 * secondo l'ordine numerico crescente.
 */
	if(EstremoSinistro<EstremoDestro)
	{
		int Pivot = ScegliPivot(EstremoSinistro,EstremoDestro);
		Pivot = Distribuisci(Array,EstremoSinistro,Pivot,EstremoDestro);
		if(k < Pivot + 1)
		return QuickSelect(Array, EstremoSinistro, Pivot - 1, k);
		else if(k > Pivot + 1)
		return QuickSelect(Array, Pivot+1, EstremoDestro, k);
		else return Array[Pivot];
	}
	return Array[EstremoSinistro];
}

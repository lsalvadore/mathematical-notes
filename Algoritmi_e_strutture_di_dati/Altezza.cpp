#include "AlberoBinario.h"

template <class Tipo> unsigned int AlberoBinario<Tipo>::Altezza()
{
/*
 *	Il metodo Altezza calcola l'altezza dell'elemento della radice
 *	dell'albero. Per conoscere l'altezza di un altro nodo dell'albero,
 *	basta eseguire il metodo del sottoalbero che ha quel nodo per radice.
 */
	if(!this) return -1;
	else
	{
		int	AltezzaSinistra = Sinistro->Altezza(),
			AltezzaDestra = Destro->Altezza(),
			Massimo;
		if(AltezzaSinistra < AltezzaDestra)
			Massimo = AltezzaDestra;
		else	Massimo = AltezzaSinistra;
		return 1 + Massimo;
	}
};

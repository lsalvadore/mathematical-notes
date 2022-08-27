#include "AlberoBinario.h"

template <class Tipo> unsigned int AlberoBinario<Tipo>::Dimensione()
{
/*
 * 	Il metodo Dimensione calcola la dimensione dell'albero.
 */
	if(!this) return 0;
	else return	1 +
			Sinistro->Dimensione() +
			Destro->Dimensione();
}

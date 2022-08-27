#include "Coda_Lista.h"

template <class Tipo> Tipo Coda_Lista<Tipo>::RestituisciPrimo()
{
	if(Vuota()) throw 0;
	return Cima->Dato;
}

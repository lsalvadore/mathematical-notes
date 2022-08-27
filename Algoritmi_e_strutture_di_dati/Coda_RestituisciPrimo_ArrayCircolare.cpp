#include "Coda_ArrayCircolare.h"

template <class Tipo> Tipo Coda_ArrayCircolare<Tipo>::Top()
{
	if(Vuota()) return ValoreDiDefault;
	return Array[Cima];
}

#include "Coda_ArrayCircolare.h"

template <class Tipo> bool Coda_ArrayCircolare<Tipo>::Vuota()
{
	if(!Occupati) return true;
	return false;
}

#include "Coda_Lista.h"

template <class Tipo> bool Coda_Lista<Tipo>::Vuota()
{
	if(!Cima) return true;
	return false;
}

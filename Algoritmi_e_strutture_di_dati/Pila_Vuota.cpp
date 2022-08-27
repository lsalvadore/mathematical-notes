#include "Pila.h"

template <class Tipo> bool Pila<Tipo>::Vuota()
{
	if(Cima == 0) return true;
	return false;
}

#include "Pila.h"

template <class Tipo> Tipo Pila<Tipo>::Top()
{
	if(Vuota()) throw 0;
	return Array[Cima - 1];
}

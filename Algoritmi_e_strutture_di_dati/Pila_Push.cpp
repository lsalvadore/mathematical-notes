#include "Pila.h"

template <class Tipo> bool Pila<Tipo>::Push(Tipo NuovoElemento)
{
	if(Cima < DimensionePila)
	{
		Array[Cima] = NuovoElemento;
		Cima++;
		return true;
	}
	return false;
}

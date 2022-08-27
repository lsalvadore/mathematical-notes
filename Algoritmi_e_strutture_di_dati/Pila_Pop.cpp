#include "Pila.h"
#include "Pila_Vuota.cpp"
#include "Pila_Top.cpp"

template <class Tipo> Tipo Pila<Tipo>::Pop()
{
	if(Vuota()) throw 0;
  Tipo ValoreRestituito = Top();
	Cima--;
	return ValoreRestituito;
}

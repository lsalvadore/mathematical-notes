#include "Coda_Lista.h"

template <class Tipo> Tipo Coda_Lista<Tipo>::Dequeue()
{
	if(Vuota()) throw 0;
	Tipo ValoreRestituito = Cima->Dato;
	Lista<Tipo> *Successivo = Cima->Successore;
  delete Cima;
	Cima = Successivo;
	return ValoreRestituito;
}

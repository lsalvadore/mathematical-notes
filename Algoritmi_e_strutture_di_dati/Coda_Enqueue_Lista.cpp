#include "Coda_Lista.h"

template <class Tipo> void Coda_Lista<Tipo>::Enqueue(Tipo NuovoElemento)
{
	if(Vuota())
	{
    Cima = new Lista<Tipo>;
    Cima->Dato = NuovoElemento;
    Cima->Successore = NULL;
		Fondo = Cima;
	}
	else
	{
		Fondo->Successore = new Lista<Tipo>;
		Fondo = Fondo->Successore;
    Fondo->Dato = NuovoElemento;
    Fondo->Successore = NULL;
	}
}

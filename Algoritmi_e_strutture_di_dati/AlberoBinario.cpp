#include "AlberoBinario.h"

template <class Tipo> AlberoBinario<Tipo>::AlberoBinario(Tipo DatoDiRadice)
{
	Dato = DatoDiRadice;
	Sinistro = NULL;
	Destro = NULL;
}

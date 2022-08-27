//AlberoBinarioDiRicerca.h
#include "AlberoBinario.h"

#ifndef	ALBEROBINARIODIRICERCA_H
#define	ALBEROBINARIODIRICERCA_H

template <class Tipo> class AlberoBinarioDiRicerca: public AlberoBinario
{
	AlberoBinarioDiRicerca<Tipo> MinimoSottoAlbero();
	public:
	AlberoBinario(Tipo DatoDiRadice);
	AlberoBinarioDiRicerca<Tipo> Inserisci(Tipo NuovoDato);
	AlberoBinarioDiRicerca<Tipo>
		Cancella(AlberoBinarioDiRicerca *Nodo);
	AlberoBinaroioDiRicerca<Tipo>Ricerca(Tipo Ricercato);
};

#endif

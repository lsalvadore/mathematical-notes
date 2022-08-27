//AlberoBinario.h

#ifndef	ALBEROBINARIO_H
#define	ALBEROBINARIO_H

template <class Tipo> class AlberoBinario
{
	public:
	Tipo 		Dato;
	AlberoBinario	*Sinistro;
	AlberoBinario	*Destro;

	AlberoBinario(Tipo DatoDiRadice);
	unsigned int Altezza();
	unsigned int Dimensione();
};

#endif

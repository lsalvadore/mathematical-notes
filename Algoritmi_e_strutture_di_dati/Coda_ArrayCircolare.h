//Coda_ArrayCircolare.h

#ifndef	CODA_ARRAYCIRCOLARE_H
#define	CODA_ARRAYCIRCOLARE_H

#define	DimensioneCoda	100

#include "ArrayCircolare.h"

template <class Tipo> class Coda_ArrayCircolare
{
	<Tipo>  Array[DimensioneCoda];
  int     Cima = 0,
          Fondo = -1;
	/*ValoreDiDefault e' cio' che restituiamo quando la coda e' vuota.*/
	Tipo ValoreDiDefault;
  unsigned Dimensione = DimensioneCoda,
           Occupati = 0;
	public:
	bool Enqueue(Tipo NuovoElemento);
	Tipo Dequeue();
	Tipo RestituisciPrimo();
	bool Vuota();
};

#endif

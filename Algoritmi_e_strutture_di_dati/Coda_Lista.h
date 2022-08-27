//Coda.h

#ifndef	CODA_LISTA_H
#define	CODA_LISTA_H

#include "Coda.h"
#include "Lista.h"

template <class Tipo> class Coda_Lista: public Coda<Tipo>
{
	Lista<Tipo>  *Cima = NULL,
		           *Fondo = NULL;
//  Coda_Lista(const Coda_Lista &Originale);
//  Coda_Lista &operator=(const Coda_Lista &Originale);
  public:
  ~Coda_Lista();
	void Enqueue(Tipo NuovoElemento);
	Tipo Dequeue();
	Tipo RestituisciPrimo();
	bool Vuota();
};

#endif

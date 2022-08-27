//Coda.h

#ifndef	CODA_H
#define	CODA_H

template <class Tipo> class Coda 
{
	public:
	virtual void Enqueue(Tipo NuovoElemento);
	virtual Tipo Dequeue();
	virtual Tipo RestituisciPrimo();
	virtual bool Vuota();
};

#endif

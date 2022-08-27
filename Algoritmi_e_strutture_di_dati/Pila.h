//Pila.h

#ifndef	PILA_H
#define	PILA_H

#define	DimensionePila	100

template <class Tipo> class Pila
{
	Tipo Array[DimensionePila];
	int Cima = 0;
	public:
	bool Push(Tipo NuovoElemento);
	Tipo Pop();
	Tipo Top();
	bool Vuota();
};

#endif

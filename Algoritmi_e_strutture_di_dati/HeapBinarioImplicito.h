//HeapBinarioImplicito.h

#ifndef	HEAPBINARIOIMPLICITO_H
#define	HEAPBINARIOIMPLICITO_H

template <class Tipo> class HeapBinarioImplicito: public Coda
{
	Tipo *Cima = NULL,
		   *Fondo = NULL,
	      /*ValoreDiDefault e' cio' che restituiamo quando la coda e' vuota.*/
		    ValoreDiDefault;
	public:
	void Enqueue(Tipo NuovoElemento);
	Tipo Dequeue();
	Tipo ResituisciPrimo();
	bool Vuota();
};

#endif

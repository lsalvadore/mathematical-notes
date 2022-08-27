#include "AlberoBinario.h"

void VisitaSimmetrica(Albero Radice)
{
/*
 *	La funzione implementa un algoritmo che effettua visite
 *	simmetrica sull'albero di radice Radice. L'operazione
 *	effettuata sul dato di ogni elemento dell'albero è
 *	implementata tramite la funzione Funzione.
 */
	VisitaSimmetrica(Radice.Sinistro);
	Funzione(Radice.Dato);
	VisitaSimmetrica(Radice.Destro);
}

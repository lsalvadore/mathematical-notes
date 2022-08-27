#include "AlberoBinario.h"

void VisitaPosticipata(Albero Radice)
{
/*
 *	La funzione implementa un algoritmo che effettua visite
 *	posticipate sull'albero di radice Radice. L'operazione
 *	effettuata sul dato di ogni elemento dell'albero è
 *	implementata tramite la funzione Funzione.
 */
	VisitaPosticipata(Radice.Sinistro);
	VisitaPosticipata(Radice.Destro);
	Funzione(Radice.Dato);
}

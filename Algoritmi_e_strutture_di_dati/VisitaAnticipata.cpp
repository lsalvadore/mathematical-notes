#include "AlberoBinario.h"

void VisitaAnticipata(Albero Radice)
{
/*
 *	La funzione implementa un algoritmo che effettua visite
 *	anticipate sull'albero di radice Radice. L'operazione
 *	effettuata sul dato di ogni elemento dell'albero è
 *	implementata tramite la funzione Funzione.
 */
	Funzione(Radice.Dato);
	VisitaAnticipata(Radice.Sinistro);
	VisitaAnticipata(Radice.Destro);
}

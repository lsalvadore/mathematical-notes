#include "Coda_ArrayCircolare.h"

template <class Tipo> Tipo Coda_ArrayCircolare<Tipo>::Dequeue()
{
  if(Vuota()) return ValoreDiDefault;
  Tipo ValoreDiRitorno = Array[Cima];
  Occupati--;
  Cima = (Cima + 1) % Dimensione;
  return ValoreDiRitorno;
}

#include "Coda_ArrayCircolare.h"

template <class Tipo>
bool Coda_ArrayCircolare<Tipo>::Enqueue(Tipo NuovoElemento)
{
  if(Dimensione == Occupati) return false;
  Occupati++;
  Fondo = (Fondo + 1) % Dimensione;
  Array[Fondo] = NuovoElemento;
  return true;
}

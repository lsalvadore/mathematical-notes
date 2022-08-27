#include "ArrayCircolare.h"

template <class Tipo>
ArrayCircolare<Tipo>::ArrayCircolare(unsigned DimensioneRichiesta)
{
  Array = new Tipo[DimensioneRichiesta];
  Dimensione = DimensioneRichiesta;
}

template <class Tipo>
ArrayCircolare<Tipo>::~ArrayCircolare()
{
  delete[] Array;
}

#include "ArrayCircolare.h"

template <class Tipo> Tipo ArrayCircolare<Tipo>::&operator[](int i)
{
  return Array[i % Dimensione];
}

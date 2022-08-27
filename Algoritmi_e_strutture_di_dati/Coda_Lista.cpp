#include "Coda_Lista.h"

template <class Tipo> Coda_Lista<Tipo>::~Coda_Lista()
{
  while(Cima)
  {
    Lista<Tipo> *Prossimo = Cima->Successore;
    delete Cima;
    Cima = Prossimo;
  }
}

//ArrayCircolare.h

#ifndef  ARRAYCIRCOLARE_H
#define  ARRAYCIRCOLARE_H

template <class Tipo> class ArrayCircolare
{
  Tipo  *Array;
  unsigned  Dimensione;
  ArrayCircolare(const ArrayCircolare &Originale);
  ArrayCircolare &operator=(const ArrayCircolare &Originale);
  public:
  ArrayCircolare(unsigned DimensioneRichiesta);
  ~ArrayCircolare();
  Tipo &operator[](int i);
}

#endif

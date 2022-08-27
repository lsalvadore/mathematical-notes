#include <iostream>

#include "Coda_Lista.h"
#include "Coda_Lista.cpp"
#include "Coda_Enqueue_Lista.cpp"
#include "Coda_Dequeue_Lista.cpp"
#include "Coda_Vuota_Lista.cpp"
#include "Coda_RestituisciPrimo_Lista.cpp"

using namespace std;

int main()
{
  Coda_Lista<int> Q;
  cout << "enqueue\t5" << endl;
  Q.Enqueue(5);
  cout << "enqueue\t-3" << endl;
  Q.Enqueue(-3);
  cout << "enqueue\t2" << endl;
  Q.Enqueue(2);
  cout << "enqueue\t5" << endl;
  Q.Enqueue(5);
  cout << "dequeue\t" << Q.Dequeue() << endl;
  cout << "enqueue\t8" << endl;
  Q.Enqueue(8);
  cout << "enqueue\t9" << endl;
  Q.Enqueue(9);
  cout << "dequeue\t" << Q.Dequeue() << endl;
  cout << "dequeue\t" << Q.Dequeue() << endl;
  cout << "dequeue\t" << Q.Dequeue() << endl;
  cout << "dequeue\t" << Q.Dequeue() << endl;
  cout << "enqueue\t1" << endl;
  Q.Enqueue(1);
  cout << "dequeue\t" << Q.Dequeue() << endl;
  cout << "dequeue\t" << Q.Dequeue() << endl;
  return 0;
}

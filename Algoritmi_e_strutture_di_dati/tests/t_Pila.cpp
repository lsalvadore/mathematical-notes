#include <iostream>

#include "Pila.h"
#include "Pila_Push.cpp"
#include "Pila_Pop.cpp"

using namespace std;

int main()
{
  Pila<int> P;
  cout << "push\t5" << endl;
  P.Push(5);
  cout << "push\t-3" << endl;
  P.Push(-3);
  cout << "push\t2" << endl;
  P.Push(2);
  cout << "push\t5" << endl;
  P.Push(5);
  cout << "pop\t" << P.Pop() << endl;
  cout << "push\t8" << endl;
  P.Push(8);
  cout << "push\t9" << endl;
  P.Push(9);
  cout << "pop\t" << P.Pop() << endl;
  cout << "pop\t" << P.Pop() << endl;
  cout << "pop\t" << P.Pop() << endl;
  cout << "pop\t" << P.Pop() << endl;
  cout << "push\t1" << endl;
  P.Push(1);
  cout << "pop\t" << P.Pop() << endl;
  cout << "pop\t" << P.Pop() << endl;
  return 0;
}

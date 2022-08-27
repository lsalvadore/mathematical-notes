#include <iostream>

using namespace std;

int QuickSelect(int Array[], int EstremoSinistro, int EstremoDestro, int k);

int main()
{
  int A[10] = {0,0,8,0,4,3,2,1,1,8};
  int B[10] = {0,5,8,2,4,3,7,9,1,6};

  cout << "A[4] = " << QuickSelect(A,0,9,4) << endl;
  cout << "B[5] = " << QuickSelect(B,0,9,5) << endl;

}

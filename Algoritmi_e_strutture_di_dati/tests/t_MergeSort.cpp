#include <iostream>

using namespace std;

void MergeSort(int Array[], int EstremoSinistro, int EstremoDestro);

int main()
{
  int A[10] = {0,0,8,0,4,3,2,1,1,8};
  int B[10] = {0,5,8,2,4,3,7,9,1,6};
  MergeSort(A,0,9);
  MergeSort(B,0,9);

  cout << "A = [";
  for(int i = 0; i < 9; i++)
  {
    cout << A[i] <<", ";
  }
  cout << A[9] << "]" << endl;

  cout << "B = [";
  for(int i = 0; i < 9; i++)
  {
    cout << B[i] <<", ";
  }
  cout << B[9] << "]" << endl;

}

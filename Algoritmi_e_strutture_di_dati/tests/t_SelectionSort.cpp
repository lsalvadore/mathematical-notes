#include <iostream>

using namespace std;

void SelectionSort(int Array[], int n);

int main()
{
  int A[10] = {0,0,8,0,4,3,2,1,1,8};
  int B[10] = {0,5,8,2,4,3,7,9,1,6};
  SelectionSort(A,10);
  SelectionSort(B,10);

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

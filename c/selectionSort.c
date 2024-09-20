/*
implementing Selection Sort algo

Divides the array in two part 1. Sorted & 2. Unsorted
repeatedly selects smallest element from the unsorted & places it at the begning.
*/

#include <stdio.h>

void selectionSort(int arr[], int sizeOfArray){
    for (int i = 0; i < sizeOfArray - 1; i++)
    {
        int min = i;
        for (int j = i + 1; j < sizeOfArray; j++)
        {
            if (arr[j] < arr[min]){
                min = j;
            }
        }
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
    }
}

int main(){
    int arr[] = {64, 34, 25, 12, 22, 11, 13};
    int sizeOfArray = sizeof(arr)/sizeof(arr[0]);
    selectionSort(arr, sizeOfArray);
    for (int i = 0; i < sizeOfArray; i++)
    {
        printf("%d ", arr[i]);
    }
    return 0;
}
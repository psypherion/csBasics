/*
"""
Bubble Sort algo Implementation

Simple comparison based algorithm, repeatedly steps through the list, compares adjacent elements,
swaps them if they're in wrong order.
"""
*/

#include <stdio.h>

void bubbleSort(int arr[], int sizeOfArray){
    for (int i = 0; i < sizeOfArray - 1; i++)
    {
        for (int j = 0; j < sizeOfArray - i - 1; j++)
        {
            if (arr[j] > arr[j + 1]){
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main(){
    int arr[] = {64, 34, 25, 12, 22, 11, 13};
    int sizeOfArray = sizeof(arr)/sizeof(arr[0]);
    bubbleSort(arr, sizeOfArray);
    for (int i = 0; i < sizeOfArray; i++)
    {
        printf("%d ", arr[i]);
    }
    return 0;
}
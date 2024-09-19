/*
Linear Search algo Implementation : 

-> Each element is checked sequentially.
*/


# include<stdio.h>
int linearSearch(int arr[], int sizeOfArray, int key){
    for (int i = 0; i < sizeOfArray; i++)
    {
        if (arr[i] == key){
            return i;
        }
    }
    return -1;
}

int main(){
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int sizeOfArray = sizeof(arr)/sizeof(arr[0]);
    int key;
    printf("Enter the key to be searched: ");
    scanf("%d", &key);
    int result = linearSearch(arr, sizeOfArray, key);
    if (result == -1){
        printf("Key not found\n");
    }
    else{
        printf("Key found at index %d\n", result);
    }
    return 0;
}
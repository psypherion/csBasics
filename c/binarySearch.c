/*
Binary Search algo Implementation: 

Repeatedly divides the search interval in half
*/

# include<stdio.h>

int binarySearch(int arr[], int start, int end, int key){
    while(start <= end){
        int mid = (start + end) / 2;
        if(arr[mid] == key){
            return mid;
        }
        else if(arr[mid] < key){
            start = mid + 1;
        }
        else{
            end = mid - 1;
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
    int result = binarySearch(arr, 0, sizeOfArray - 1, key);
    if (result == -1){
        printf("Key not found\n");
    }
    else{
        printf("Key found at index %d\n", result);
    }
    return 0;
}
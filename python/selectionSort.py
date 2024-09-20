"""
implementing Selection Sort algo

Divides the array in two part 1. Sorted & 2. Unsorted
repeatedly selects smallest element from the unsorted & places it at the begning.
"""
def selection_sort(arr: list):
    for i in range(len(arr)):
        min_index: int = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[min_index]:
                min_index = j
        arr[i], arr[min_index] = arr[min_index], arr[i]
    return arr


if __name__ == "__main__": 
    arr: list = [4, 5, 6, 2, 1, 3]
    print(selection_sort(arr))
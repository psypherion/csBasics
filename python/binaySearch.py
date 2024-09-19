"""
Binary Search algo Implementation: 

Repeatedly divides the search interval in half
"""

def binarySearch(arr: list, start: int, end: int, key: int) -> int:
    while start <= end:
        mid: int = (start+end) // 2
        if arr[mid] == key:
            return mid
        elif arr[mid] < key:
            start = mid + 1
        else:
            end = mid - 1

    return -1

if __name__ == "__main__":
    """
    It won't work cause Binary search requires an array to be sorted first.
    """
    arr: list = [1, 5, 2, 9, 3, 6, 1]
    print(binarySearch(arr, 0, len(arr)-1, 3)) # will return -1

    """
    Let's take a sorted array 
    """

    sorted_arr: list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print(binarySearch(sorted_arr, 0, len(sorted_arr)-1, 5)) # will return 4
"""
Binary Search algo Implementation: 

Repeatedly divides the search interval in half
"""

fn binary_search(arr: SIMD[DType.int8, 8], n: Int, key: Int) -> Int:
    var low = 0
    var high = n - 1

    while low <= high:
        var mid = (low + high) // 2  # Calculate the middle index
        if arr[mid] == key:
            return mid  # Key found at index mid
        elif arr[mid] < key:
            low = mid + 1  # Search in the right half
        else:
            high = mid - 1  # Search in the left half

    return -1  # Key not found

fn main():
    var arr = SIMD[DType.int8, 8](1, 2, 3, 4, 5, 6, 9, 12)  # Sorted array
    var key = 5
    var result = binary_search(arr, len(arr), key)
    print(result)
    return None


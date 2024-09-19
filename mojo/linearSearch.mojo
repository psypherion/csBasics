"""
Linear Search algo Implementation : 

-> Each element is checked sequentially.
"""


fn linear_search(arr: SIMD[DType.int8, 8], n: Int, key: Int) -> Int:
    for i in range(n):
        if arr[i] == key:
            return i
    return -1  # If the key is not found

fn main():
    var arr = SIMD[DType.int8, 8](1, 5, 2, 9, 3, 6, 1, 4)
    var key = 3
    var result = linear_search(arr, len(arr), key)
    print(result)
    return None



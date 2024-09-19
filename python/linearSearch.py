"""
Linear Search algo Implementation : 

-> Each element is checked sequentially.
"""

def linearSearch(arr: list, sizeOfArray: int, key: int) -> int:
    for i in range(0, sizeOfArray):
        if arr[i] == key:
            return i

    return -1

if __name__ == "__main__":
    arr: list = [1, 5, 2, 9, 3, 6, 1]
    print(linearSearch(arr, len(arr), 3))
"""
Bubble Sort algo Implementation

Simple comparison based algorithm, repeatedly steps through the list, compares adjacent elements,
swaps them if they're in wrong order.
"""

def bubbleSort(arr: list):
    for i in range(len(arr)):
        for j in range(0, len(arr)-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]

    return arr

def optimizedbubbleSort(arr: list):
    for i in range(len(arr)):
        swapped = False
        for j in range(0, len(arr)-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swapped = True

        if not swapped:
            break

    return arr

if __name__ == "__main__":
    arr = [64, 34, 25, 12, 22, 11, 13]
    print(f"Bubble Sort: {bubbleSort(arr)}")
    print(f"Optimized Bubble Sort: {optimizedbubbleSort(arr)}")
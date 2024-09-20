"""
Bubble Sort algo Implementation

Simple comparison based algorithm, repeatedly steps through the list, compares adjacent elements,
swaps them if they're in wrong order.
"""

from collections import List
fn bubbleSort(arr: List[Int8]) -> List[Int8]:
    var n = len(arr)
    var arr_copy = arr
    for i in range(n):
        # Create a flag that will allow the function to terminate early if there's nothing left to sort 
        var alreadySorted = False
        # Start looking at each item of the list one by one, comparing it with its adjacent value
        for j in range(n - i - 1):
            # If we come across an element that is greater than the next element, swap them
            if arr_copy[j] > arr_copy[j + 1]:
                # Swap values
                var temp = arr_copy[j]
                arr_copy[j] = arr_copy[j + 1]
                arr_copy[j + 1] = temp
                # Since we had to swap two elements,
                # we need to iterate over the list again.
                alreadySorted = True
                # If there were no swaps during the last iteration,
                # the list is already sorted, and we can terminate
        if not alreadySorted:
            break
    return arr

# Helper function to convert List[Int8] to a string for printing
fn listToString(arr: List[Int8]) -> String:
    var result: String = "["  # Start with an opening bracket
    for i in range(0, len(arr)):
        result = result + str(arr[i])  # Convert each element to string
        if i < len(arr) - 1:
            result = result + ", "  # Add comma between elements
    result = result + "]"  # Closing bracket
    return result

# Main function
fn main() -> None:
    var my_list: List[Int8] = List[Int8](64, 25, 12, 22, 11)  # Example list
    print("Original list: " + listToString(my_list))  # Use listToString to print the list
    
    var sorted_list = bubbleSort(my_list)  # Sort the list
    print("Sorted list: " + listToString(sorted_list))  # Use listToString to print the sorted list
    return None

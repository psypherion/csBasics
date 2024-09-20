"""
implementing Selection Sort algo

Divides the array in two part 1. Sorted & 2. Unsorted
repeatedly selects smallest element from the unsorted & places it at the begning.
"""

from collections import List

# Function to perform selection sort
fn selectionSort(arr: List[Int8]) -> List[Int8]:
    # Create a copy of the array to modify
    var arr_copy = arr  # Make sure arr_copy is mutable
    var n: Int8 = len(arr_copy)
    
    for i in range(0, n-1):
        var min_index = i
        for j in range(i+1, n):
            # Directly access the element at min_index
            if arr_copy[j] < arr_copy[min_index]:
                min_index = j
        # Swap the elements
        arr_copy[i], arr_copy[min_index] = arr_copy[min_index], arr_copy[i]  # Swapping
        
    return arr_copy  # Return the modified copy

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
fn main():
    var my_list: List[Int8] = List[Int8](64, 25, 12, 22, 11)  # Example list
    print("Original list: " + listToString(my_list))  # Use listToString to print the list
    
    var sorted_list = selectionSort(my_list)  # Sort the list
    print("Sorted list: " + listToString(sorted_list))  # Use listToString to print the sorted list





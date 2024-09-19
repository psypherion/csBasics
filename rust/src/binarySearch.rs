fn binary_search(arr: &[i32], mut start: i32, mut end: i32, target: i32) -> Option<usize> {
    while start <= end {
        let mid = (start + end) / 2;
        let mid_index = mid as usize;  // Convert mid to usize for array indexing

        if arr[mid_index] == target {
            return Some(mid_index);
        } else if arr[mid_index] > target {
            end = mid - 1;
        } else {
            start = mid + 1;
        }
    }
    None
}

fn main() {
    let mut arr = vec![10, 23, 45, 70, 11, 15];
    arr.sort();  // Ensure the array is sorted for binary search
    let target = 45;

    match binary_search(&arr, 0, arr.len() as i32 - 1, target) {
        Some(index) => println!("Element found at index {}", index),
        None => println!("Element not found"),
    }
}

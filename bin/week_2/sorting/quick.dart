
partition(List<int> arr, int start, end) {
  int pivot = arr[end];
  int i = start - 1;

  for (int j = start; j < end; j++) {
    if (arr[j] < pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  int temp = arr[i + 1];
  arr[i + 1] = arr[end];
  arr[end] = temp;

  return i + 1;
}

 quicksort(List<int> nums, int start, int end) {
  if (start < end) {
    int pi = partition(nums, start, end);
    quicksort(nums, start, pi - 1);
    quicksort(nums, pi + 1, end);
  }
}

void main() {
  List<int> arr = [20, 23, 11, 40, 79, 96];
  int start = 0;
  int end = arr.length - 1;
  quicksort(arr, start, end);
  print(arr);
}
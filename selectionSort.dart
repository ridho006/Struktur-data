import 'dart:io';
void SelectionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int minIdx = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIdx]) {
        minIdx = j;
      }
    }
    
    int temp = arr[minIdx];
    arr[minIdx] = arr[i];
    arr[i] = temp;
  }
}

void hasil(List<int> arr) {
  print("Hasil Pengurutan: ");
  for (int i = 0; i < arr.length; i++) {
    stdout.write("${arr[i]} ");
  }
  print("");
}
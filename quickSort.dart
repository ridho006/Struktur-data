import 'dart:io';
import 'dart:math';

void quickSort<T extends Comparable<T>>(List<T> arr, int p, int r) {
  int q;
  if (p < r) {
    q = partition(arr, p, r);
    quickSort(arr, p, q);
    quickSort(arr, q + 1, r);
  }
}
int partition<T extends Comparable<T>>(List<T> arr, int p, int r) {
  int i, j;
  T pivot, temp;
  pivot = arr[p];
  i = p;
  j = r;
  while (i <= j) {
  while (pivot.compareTo(arr[j]) < 0) j--;
  while (pivot.compareTo(arr[i]) > 0) i++;
  if (i < j) {
    temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    j--;
    i++;
  } else {
    return j;
  }
  }
  return j;
}
void printData<T>(List<T> data) {
  for (T objek in data) {
    stdout.write('$objek ');
  }
  print('');
}
void main() {
 var random = Random();
 List<num> data = List.generate(500000, (_) => random.nextInt(5000));
 //printData(data);
 DateTime startTime = DateTime.now();
 quickSort(data, 0, data.length - 1);
 Duration elapsedTime = DateTime.now().difference(startTime);
 printData(data);
 print('Waktu ${elapsedTime.inMilliseconds} ms');
}
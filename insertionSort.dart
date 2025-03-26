import 'dart:io';
void InsertionSort(List<int> arr) {
int n = arr.length;
for (int i = 1; i < n; i++) {
int key = arr[i];
int j = i - 1;
while (j >= 0 && arr[j] > key) {
arr[j + 1] = arr[j];
j = j - 1;
}
arr[j + 1] = key;
}
}

void hasil(List<int> arr) {
print("Hasil Pengurutan: ");
for (int i = 0; i < arr.length; i++) {
stdout.write("${arr[i]} ");
}
print("");
}
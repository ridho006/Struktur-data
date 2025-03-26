import 'dart:math';
import 'sellSort.dart';
void main(){
  var random = Random();
  List<int> arr = List.generate(150000, (_) => random.nextInt(5000));
  //print("Sebelum diurutkan: ${arr.join(' ')}");
  DateTime startShell = DateTime.now();
  ShellSort(arr);
  Duration elapsedShell = DateTime.now().difference(startShell);
  hasil(arr);
  print('Waktu: ${elapsedShell.inMilliseconds} ms');
}
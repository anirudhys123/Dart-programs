import 'dart:io';

void main() {
  print('Enter the number of terms:');
  int terms = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1, c;
  print('Fibonacci Sequence: $a $b');
  for (int i = 3; i <= terms; i++) {
    c = a + b;
    print(c);
    a = b;
    b = c;
  }
}

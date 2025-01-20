import 'dart:io';

void main() {
  print('Enter first number:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter second number:');
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print('$num1 is the largest number');
  } else {
    print('$num2 is the largest number');
  }
}

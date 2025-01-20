import 'dart:io';

void main() {
  print('Enter a string:');
  String str = stdin.readLineSync()!;

  String reversed = str.split('').reversed.join('');
  print('Reversed string: $reversed');
}

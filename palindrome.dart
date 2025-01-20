import 'dart:io';

void main() {
  print('Enter a string:');
  String str = stdin.readLineSync()!;

  String reversed = str.split('').reversed.join('');
  if (str == reversed) {
    print('$str is a palindrome');
  } else {
    print('$str is not a palindrome');
  }
}

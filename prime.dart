import 'dart:io';

void main() {
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);

  bool isPrime = true;
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print('$num is a prime number');
  } else {
    print('$num is not a prime number');
  }
}

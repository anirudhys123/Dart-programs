void parseNumber(String input) {
  try {
    int number = int.parse(input);
    print('Parsed number: $number');
  } on FormatException {
    print('Invalid number format!');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  parseNumber('123'); // Parsed number: 123
  parseNumber('abc'); // Invalid number format!
}

import 'dart:io';
import 'dart:math';

class MathQuiz {
  final Random _random = Random();
  final int numberOfQuestions;
  int _score = 0;

  MathQuiz(this.numberOfQuestions);

  void start() {
    print('Welcome to Math Quiz!');
    for (int i = 0; i < numberOfQuestions; i++) {
      _askQuestion(i + 1);
    }
    print('\nFinal Score: $_score/$numberOfQuestions');
  }

  void _askQuestion(int questionNumber) {
    final a = _random.nextInt(20) + 1;
    final b = _random.nextInt(20) + 1;
    final op = ['+', '-', '*'][_random.nextInt(3)];

    print('\nQuestion $questionNumber: $a $op $b = ?');
    final answer = _calculateAnswer(a, b, op);

    stdout.write('Your answer: ');
    final userAnswer = int.tryParse(stdin.readLineSync() ?? '');

    if (userAnswer == answer) {
      _score++;
      print('✅ Correct!');
    } else {
      print('❌ Wrong! Correct answer was $answer');
    }
  }

  int _calculateAnswer(int a, int b, String op) {
    switch (op) {
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '*':
        return a * b;
      default:
        throw ArgumentError('Invalid operator');
    }
  }
}

void main() {
  MathQuiz(3).start();
}

import 'dart:async';

void chatbot() {
  Stream<String> responses() async* {
    await Future.delayed(Duration(seconds: 1));
    yield "Hello! How can I help you today?";
    await Future.delayed(Duration(seconds: 2));
    yield "I'm here to assist you with any questions.";
    await Future.delayed(Duration(seconds: 3));
    yield "Have a great day!";
  }

  responses().listen((message) {
    print("Chatbot: $message");
  });
}

void main() {
  print("Starting Chatbot...");
  chatbot();
}

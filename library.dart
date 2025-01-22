import 'dart:async';

Future<void> performTask(String taskName, int duration) async {
  print("$taskName started.");
  await Future.delayed(Duration(seconds: duration));
  print("$taskName completed after $duration seconds.");
}

void main() async {
  print("Task Manager Starting...");

  await Future.wait([
    performTask("Task 1", 2),
    performTask("Task 2", 4),
    performTask("Task 3", 3),
  ]);

  print("All tasks completed.");
}

import 'dart:io';

void main() {
  tasks();
}

void tasks() async {
  task1();
  String task2DATA = await task2();
  task3(task2DATA);
}

void task1() {
  String taskOne = 'task one Data';
  print('Task One Completed');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String taskTwo;

  await Future.delayed(threeSeconds, () {
    taskTwo = 'task two Data';
    print('Task Two Completed');
  });
  return taskTwo;
}

void task3(String task2Data) {
  String taskThree = 'task three Data';
  print('Task Three Completed,with $task2Data');
}

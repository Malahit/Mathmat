
import 'task_set.dart';

class Week {
  final int number;
  final String dates;
  final String theme;
  final String explanation;
  final TaskSet tasks;

  Week({
    required this.number,
    required this.dates,
    required this.theme,
    required this.explanation,
    required this.tasks,
  });

  factory Week.fromJson(Map<String, dynamic> json) => Week(
        number: json['week'],
        dates: json['dates'],
        theme: json['theme'],
        explanation: json['explanation'],
        tasks: TaskSet.fromJson(json['tasks']),
      );
}

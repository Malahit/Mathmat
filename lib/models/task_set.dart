
class TaskSet {
  final List<String> basic;
  final List<String> advanced;
  final List<String> logic;

  TaskSet({
    required this.basic,
    required this.advanced,
    required this.logic,
  });

  factory TaskSet.fromJson(Map<String, dynamic> json) => TaskSet(
        basic: List<String>.from(json['basic']),
        advanced: List<String>.from(json['advanced']),
        logic: List<String>.from(json['logic']),
      );
}

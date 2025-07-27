
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/week.dart';

class DataLoader {
  static Future<List<Week>> loadWeeksFromAssets() async {
    final data = await rootBundle.loadString('assets/data/september_october.json');
    final jsonResult = json.decode(data);
    final List<Week> weeks = [];
    for (var month in jsonResult) {
      for (var week in month['weeks']) {
        weeks.add(Week.fromJson(week));
      }
    }
    return weeks;
  }
}


import 'package:flutter/material.dart';
import '../models/week.dart';
import '../services/data_loader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Week> weeks = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final loadedWeeks = await DataLoader.loadWeeksFromAssets();
    setState(() {
      weeks = loadedWeeks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5 класс — Математика')),
      body: weeks.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: weeks.length,
              itemBuilder: (context, index) {
                final week = weeks[index];
                return ListTile(
                  title: Text("Неделя ${week.number}: ${week.theme}"),
                  subtitle: Text(week.dates),
                );
              },
            ),
    );
  }
}

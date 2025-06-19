import 'package:flutter/material.dart';
import 'package:flutter_medrocket_task/pages/document_page.dart';
import 'package:flutter_medrocket_task/pages/questionnaire_page.dart';

enum TaskNumber {
  first, second
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final TaskNumber loadTaskNumber = TaskNumber.second;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    switch (loadTaskNumber) {
      case TaskNumber.first:
        return MaterialApp(home: const DocumentPage());
      case TaskNumber.second:
        return MaterialApp(home: const QuestionnairePage());
    }
  }
}

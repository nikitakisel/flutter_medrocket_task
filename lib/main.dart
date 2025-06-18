import 'package:flutter/material.dart';
import 'package:flutter_medrocket_task/pages/document_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const DocumentPage());
  }
}

import 'package:flutter/material.dart';
import 'package:homework_4/views/screens/main_screen.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

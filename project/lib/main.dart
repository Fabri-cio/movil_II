import 'package:flutter/material.dart';
import 'package:project/calendar.dart';
import 'package:project/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: StartPage(),
    ));
  }
}

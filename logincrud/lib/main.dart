import 'package:logincrud/firebase_options.dart';
import 'package:logincrud/pages/edit_name_page.dart';
import 'package:logincrud/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.white,
        fontFamily: 'Georgia',
      ),
      routes: {'/edit': (context) => const EditNamePage()},
      title: 'Inicio de sesión con Firebase',
      home: LoginPage(),
    );
  }
}
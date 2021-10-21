import 'package:flutter/material.dart';
import 'package:prueba/pscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITTEH',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const PersonalScreen(),
    );
  }
}

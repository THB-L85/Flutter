import 'package:flutter/material.dart';
import 'package:screen_careers/careers.dart';

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
        title: 'Carreras',
        theme: ThemeData(backgroundColor: Colors.white),
        home: const Careers());
  }
}

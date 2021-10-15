import 'package:flutter/material.dart';
import 'package:itteh_application/colores.dart';
import 'package:itteh_application/personal.dart';

void main() {
  runApp(Itteh());
}

class Itteh extends StatelessWidget {
  const Itteh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal',
      theme: ThemeData(
        scaffoldBackgroundColor: cBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Interfaz(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:screen_notices/notices.dart';

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
      title: 'ScreenNotices',
      theme: ThemeData(backgroundColor: Colors.white),
      home: const ScreenNotices(),
    );
  }
}

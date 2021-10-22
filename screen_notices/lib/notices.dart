import 'package:flutter/material.dart';

const cPrimaryColor = Color(0xFF6DBA7D);
const cFontColor = Color(0xFF468DA4);
const cSearchBar = Color(0xFFF6F6F6);

class ScreenNotices extends StatelessWidget {
  const ScreenNotices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Avisos"),
        titleTextStyle: const TextStyle(color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 327,
                color: cSearchBar,
                child: const TextField(
                  decoration: InputDecoration(hintText: "Search for"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

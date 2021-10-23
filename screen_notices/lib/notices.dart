import 'package:flutter/material.dart';

const cPrimaryColor = Color(0xFF6DBA7D);
const cFontColor = Color(0xFF468DA4);
const cSearchBar = Color(0xFFF6F6F6);
const double dDefaultPadding = 20.0;

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
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20.0),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.0,
                width: 262.0,
                padding: const EdgeInsets.only(left: dDefaultPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: cSearchBar),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search for",
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 20.0,
                      )),
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(left: 13.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: cSearchBar),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

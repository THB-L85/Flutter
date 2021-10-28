import 'package:flutter/material.dart';

const cPrimaryColor = Color(0xFF468DA4);
const cSecondaryColor = Color(0xFF1B365D); // color para el fondo de avisos
const cSearchBar = Color(0xFFF6F6F6); // color de la SearchBar
const double dDefaultPadding = 20.0; // medida para margin y padding

class Careers extends StatefulWidget {
  const Careers({Key? key}) : super(key: key);

  @override
  _CareersState createState() => _CareersState();
}

class _CareersState extends State<Careers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Ingenierías y Licenciaturas"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
            color: Colors.black),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Row(
            children: [
              Container(
                width: 262.0,
                height: 50.0,
                margin: const EdgeInsets.only(
                    right: 15.0, bottom: 24.0, left: dDefaultPadding),
                padding: const EdgeInsets.only(left: dDefaultPadding),
                decoration: BoxDecoration(
                    color: cSearchBar,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Opacity(
                  opacity: 0.3,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for",
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                margin: const EdgeInsets.only(bottom: 24.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: cSearchBar),
                child: const Opacity(opacity: 0.3, child: Icon(Icons.tune)),
              )
            ],
          ),
          tarjetaCarrera("Ingeniería Electrónica\nDescripción"),
          tarjetaCarrera("Ingeniería Civil\nDescripción"),
          tarjetaCarrera("Ingeniería Mecatrónica\nDescripción"),
          tarjetaCarrera("Ingeniería Industrial\nDescripción"),
          tarjetaCarrera("Ingeniería en Sistemas Computacionales\nDescripción"),
          tarjetaCarrera("Ingeniería en Logística\nDescripción"),
          tarjetaCarrera("Ingeniería en Gestión Empresarial\nDescripción"),
          tarjetaCarrera("Licenciatura en Administración\nDescripción"),
          tarjetaCarrera("Contador Público\nDescripción"),
        ],
      ),
    );
  }

  Container tarjetaCarrera(String text) {
    return Container(
      height: 94.0,
      width: 324,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: cPrimaryColor),
      margin: const EdgeInsets.only(
          right: dDefaultPadding, bottom: 11.0, left: dDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        children: [
          Container(
            height: 35,
            width: 2.5,
            color: cSecondaryColor,
            margin: const EdgeInsets.only(top: 16.0, right: 10.0),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                margin: const EdgeInsets.only(top: 15.0, left: 10.0),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}

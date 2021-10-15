import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:itteh_application/body.dart';
import 'package:itteh_application/colores.dart';

class Interfaz extends StatelessWidget {
  const Interfaz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarM(),
      body: Body(),
    );
  }

  AppBar appBarM() {
    return AppBar(
      // Aqui comienza el diseno del appBar
      backgroundColor: Colors.white, // El color se definio en otro archivo
      elevation: 0,
      title: Text('Personal'),
      centerTitle: true,
      // Con titleTextStyle se le da el diseno a la fuente
      titleTextStyle: TextStyle(
        color: cFontColor,
        fontFamily: 'Roboto',
        fontSize: 20,
      ),
      // para agregar el boton se uso un leading
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        color: cFontColor,
        onPressed: () {},
      ),
    );
  }
}

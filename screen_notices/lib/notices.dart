import 'package:flutter/material.dart';

const cPrimaryColor = Color(0xFF6DBA7D); // color para el fondo de avisos
const cFontColor = Color(0xFF468DA4); // color de la fuente de la fecha
const cGreyCustom = Color(0xFFCACACA); // color donde ira la imagen
const cSearchBar = Color(0xFFF6F6F6); // color de la SearchBar
const double dDefaultPadding = 20.0; // medida para margin y padding

class ScreenNotices extends StatelessWidget {
  const ScreenNotices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // con esta linea centramos el titulo
        centerTitle: true,
        title: const Text(
          "Avisos Generales",
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
        // esta linea agrega el boton con icono para regresar y se agrega color
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
      body: ListView(
        // usamos listView para poder hacer el listado de aviso que se agregaran y se anadio un efecto al hacer scroll
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          //*--------------------------- Apartir de aqui se implementa la SearchBar -----------------------*//
          // se uso row para comodar los elementos como se planeo
          Row(
            // esta linea centra el contenido de row (entrada de busqueda y el boton)
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //*------ entrada de busqueda ------*//
              Container(
                height: 50.0,
                width: 262.0,
                // una vez definido el tamano del contenedor agregamos padding para centrar lo que habra dentro del container
                padding: const EdgeInsets.only(left: dDefaultPadding),
                // con boxDecoration agregamos bordes circulares y asignamos el color
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: cSearchBar),
                // con TextField haremos la entrada de busqueda
                child: const Opacity(
                  opacity: 0.2,
                  child: TextField(
                    decoration: InputDecoration(
                        // esta linea coloca el texto Search for
                        hintText: "Search for",
                        // focusBorder y enableBorder elimina efectos del borde no deseados
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        // suffixIcon agrega el icono de una lupa, su color y tamano
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20.0,
                        )),
                  ),
                ),
              ),
              //*------- boton de filtrado ---------*//
              Container(
                width: 50.0,
                height: 50.0,
                // agregamos padding para acomodar el contenido del container
                margin: const EdgeInsets.only(left: 13.0),
                // con boxDecoration hacemos los bordes cirulares
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: cSearchBar),
                // para lograr la opacidad se ocupa Opacity
                child: Opacity(
                  opacity: 0.2,
                  // esto agrega el boton con icono y su color
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //*-------------------------------- los avisos comienzan aqui -----------------------------*//
          //!-------------------------------- tarjeta de aviso --------------------------------------!//
          //*------------ fondo ----------------*//
          Container(
            height: 130.0,
            // se anadio maring en los laterales de igual tamano y en la parte superior se le dio 20.0
            margin: const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
            // se ocupa BoxDecoration para lograr los bordes redondeados y el color
            decoration: BoxDecoration(
                // al borde sera circular
                borderRadius: BorderRadius.circular(15.0),
                // al color se le agrego opacidad de 61%
                color: cPrimaryColor.withOpacity(0.61)),
            // Stack se utilizo para poder acomodar los widgets
            child: Stack(
              children: [
                //*----------titulo del aviso---------------*//
                Container(
                  // el margin coloca el texto en su lugar
                  margin: const EdgeInsets.only(top: 12.0, left: 12.0),
                  // esto agrega el texto, la fuente, tamano y color
                  child: const Text(
                    "Sleepover Night",
                    style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                ),
                //*--------recuadro para la imagen---------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(bottom: 12.0, left: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: cGreyCustom),
                  ),
                ),
                //*--------fecha de publicacion-----------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    // margin posiciona el container
                    margin: const EdgeInsets.only(top: 41.0, left: 114),
                    // esto agrega la fecha de publicacion, la fuente, tamano y color
                    child: const Text(
                      "06 Jan 21, 09:00 AM",
                      style: TextStyle(
                          fontFamily: "SourceSeansPro",
                          fontWeight: FontWeight.w600,
                          color: cFontColor),
                    ),
                  ),
                ),
                //*-----------icono del reloj-------------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      // margin posiciona el container
                      margin: const EdgeInsets.only(top: 42.5, left: 95),
                      child: const Icon(
                        Icons.schedule,
                        size: 14.0,
                        color: Color(0xFF6789CA),
                      )),
                ),
                //*---------Contenido---------------------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 53.0,
                    width: 225.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(
                        left: 95.0, bottom: 13.0, right: 23.0),
                    // esto agrega el texto, la fuente, tamano y color
                    child: const Text(
                      "Con base en la CIRCULAR No. M00/052/202 y en cumplimiento a las “Medidas generales de ...",
                      style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 13.0,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
          //!-------------------------------- tarjeta de aviso --------------------------------------!//
          //*------------ fondo ----------------*//
          Container(
            height: 130.0,
            // se anadio maring en los laterales de igual tamano y en la parte superior se le dio 20.0
            margin: const EdgeInsets.only(top: 12.0, right: 15.0, left: 15.0),
            // se ocupa BoxDecoration para lograr los bordes redondeados y el color
            decoration: BoxDecoration(
                // al borde sera circular
                borderRadius: BorderRadius.circular(15.0),
                // al color se le agrego opacidad de 61%
                color: cPrimaryColor.withOpacity(0.61)),
            // Stack se utilizo para poder acomodar los widgets
            child: Stack(
              children: [
                //*----------titulo del aviso---------------*//
                Container(
                  // el margin coloca el texto en su lugar
                  margin: const EdgeInsets.only(top: 12.0, left: 12.0),
                  // esto agrega el texto, la fuente, tamano y color
                  child: const Text(
                    "Sleepover Night",
                    style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                ),
                //*--------recuadro para la imagen---------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(bottom: 12.0, left: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: cGreyCustom),
                  ),
                ),
                //*--------fecha de publicacion-----------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    // margin posiciona el container
                    margin: const EdgeInsets.only(top: 41.0, left: 114),
                    // esto agrega la fecha de publicacion, la fuente, tamano y color
                    child: const Text(
                      "06 Jan 21, 09:00 AM",
                      style: TextStyle(
                          fontFamily: "SourceSeansPro",
                          fontWeight: FontWeight.w600,
                          color: cFontColor),
                    ),
                  ),
                ),
                //*-----------icono del reloj-------------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      // margin posiciona el container
                      margin: const EdgeInsets.only(top: 42.5, left: 95),
                      child: const Icon(
                        Icons.schedule,
                        size: 14.0,
                        color: Color(0xFF6789CA),
                      )),
                ),
                //*---------Contenido---------------------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 53.0,
                    width: 225.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(
                        left: 95.0, bottom: 13.0, right: 23.0),
                    // esto agrega el texto, la fuente, tamano y color
                    child: const Text(
                      "Con base en la CIRCULAR No. M00/052/202 y en cumplimiento a las “Medidas generales de ...",
                      style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 13.0,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
          //!-------------------------------- tarjeta de aviso --------------------------------------!//
          //*------------ fondo ----------------*//
          Container(
            height: 130.0,
            // se anadio maring en los laterales de igual tamano y en la parte superior se le dio 20.0
            margin: const EdgeInsets.only(top: 12.0, right: 15.0, left: 15.0),
            // se ocupa BoxDecoration para lograr los bordes redondeados y el color
            decoration: BoxDecoration(
                // al borde sera circular
                borderRadius: BorderRadius.circular(15.0),
                // al color se le agrego opacidad de 61%
                color: cPrimaryColor.withOpacity(0.61)),
            // Stack se utilizo para poder acomodar los widgets
            child: Stack(
              children: [
                //*----------titulo del aviso---------------*//
                Container(
                  // el margin coloca el texto en su lugar
                  margin: const EdgeInsets.only(top: 12.0, left: 12.0),
                  // esto agrega el texto, la fuente, tamano y color
                  child: const Text(
                    "Sleepover Night",
                    style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                ),
                //*--------recuadro para la imagen---------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(bottom: 12.0, left: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: cGreyCustom),
                  ),
                ),
                //*--------fecha de publicacion-----------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    // margin posiciona el container
                    margin: const EdgeInsets.only(top: 41.0, left: 114),
                    // esto agrega la fecha de publicacion, la fuente, tamano y color
                    child: const Text(
                      "06 Jan 21, 09:00 AM",
                      style: TextStyle(
                          fontFamily: "SourceSeansPro",
                          fontWeight: FontWeight.w600,
                          color: cFontColor),
                    ),
                  ),
                ),
                //*-----------icono del reloj-------------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      // margin posiciona el container
                      margin: const EdgeInsets.only(top: 42.5, left: 95),
                      child: const Icon(
                        Icons.schedule,
                        size: 14.0,
                        color: Color(0xFF6789CA),
                      )),
                ),
                //*---------Contenido---------------------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 53.0,
                    width: 225.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(
                        left: 95.0, bottom: 13.0, right: 23.0),
                    // esto agrega el texto, la fuente, tamano y color
                    child: const Text(
                      "Con base en la CIRCULAR No. M00/052/202 y en cumplimiento a las “Medidas generales de ...",
                      style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 13.0,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
          //!-------------------------------- tarjeta de aviso --------------------------------------!//
          //*------------ fondo ----------------*//
          Container(
            height: 130.0,
            // se anadio maring en los laterales de igual tamano y en la parte superior se le dio 20.0
            margin: const EdgeInsets.only(top: 12.0, right: 15.0, left: 15.0),
            // se ocupa BoxDecoration para lograr los bordes redondeados y el color
            decoration: BoxDecoration(
                // al borde sera circular
                borderRadius: BorderRadius.circular(15.0),
                // al color se le agrego opacidad de 61%
                color: cPrimaryColor.withOpacity(0.61)),
            // Stack se utilizo para poder acomodar los widgets
            child: Stack(
              children: [
                //*----------titulo del aviso---------------*//
                Container(
                  // el margin coloca el texto en su lugar
                  margin: const EdgeInsets.only(top: 12.0, left: 12.0),
                  // esto agrega el texto, la fuente, tamano y color
                  child: const Text(
                    "Sleepover Night",
                    style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                ),
                //*--------recuadro para la imagen---------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(bottom: 12.0, left: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: cGreyCustom),
                  ),
                ),
                //*--------fecha de publicacion-----------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    // margin posiciona el container
                    margin: const EdgeInsets.only(top: 41.0, left: 114),
                    // esto agrega la fecha de publicacion, la fuente, tamano y color
                    child: const Text(
                      "06 Jan 21, 09:00 AM",
                      style: TextStyle(
                          fontFamily: "SourceSeansPro",
                          fontWeight: FontWeight.w600,
                          color: cFontColor),
                    ),
                  ),
                ),
                //*-----------icono del reloj-------------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      // margin posiciona el container
                      margin: const EdgeInsets.only(top: 42.5, left: 95),
                      child: const Icon(
                        Icons.schedule,
                        size: 14.0,
                        color: Color(0xFF6789CA),
                      )),
                ),
                //*---------Contenido---------------------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 53.0,
                    width: 225.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(
                        left: 95.0, bottom: 13.0, right: 23.0),
                    // esto agrega el texto, la fuente, tamano y color
                    child: const Text(
                      "Con base en la CIRCULAR No. M00/052/202 y en cumplimiento a las “Medidas generales de ...",
                      style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 13.0,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
          //!-------------------------------- tarjeta de aviso --------------------------------------!//
          //*------------ fondo ----------------*//
          Container(
            height: 130.0,
            // se anadio maring en los laterales de igual tamano y en la parte superior se le dio 20.0
            margin: const EdgeInsets.only(top: 12.0, right: 15.0, left: 15.0),
            // se ocupa BoxDecoration para lograr los bordes redondeados y el color
            decoration: BoxDecoration(
                // al borde sera circular
                borderRadius: BorderRadius.circular(15.0),
                // al color se le agrego opacidad de 61%
                color: cPrimaryColor.withOpacity(0.61)),
            // Stack se utilizo para poder acomodar los widgets
            child: Stack(
              children: [
                //*----------titulo del aviso---------------*//
                Container(
                  // el margin coloca el texto en su lugar
                  margin: const EdgeInsets.only(top: 12.0, left: 12.0),
                  // esto agrega el texto, la fuente, tamano y color
                  child: const Text(
                    "Sleepover Night",
                    style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                ),
                //*--------recuadro para la imagen---------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(bottom: 12.0, left: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: cGreyCustom),
                  ),
                ),
                //*--------fecha de publicacion-----------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    // margin posiciona el container
                    margin: const EdgeInsets.only(top: 41.0, left: 114),
                    // esto agrega la fecha de publicacion, la fuente, tamano y color
                    child: const Text(
                      "06 Jan 21, 09:00 AM",
                      style: TextStyle(
                          fontFamily: "SourceSeansPro",
                          fontWeight: FontWeight.w600,
                          color: cFontColor),
                    ),
                  ),
                ),
                //*-----------icono del reloj-------------*//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      // margin posiciona el container
                      margin: const EdgeInsets.only(top: 42.5, left: 95),
                      child: const Icon(
                        Icons.schedule,
                        size: 14.0,
                        color: Color(0xFF6789CA),
                      )),
                ),
                //*---------Contenido---------------------*//
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 53.0,
                    width: 225.0,
                    // margin posiciona el container
                    margin: const EdgeInsets.only(
                        left: 95.0, bottom: 13.0, right: 23.0),
                    // esto agrega el texto, la fuente, tamano y color
                    child: const Text(
                      "Con base en la CIRCULAR No. M00/052/202 y en cumplimiento a las “Medidas generales de ...",
                      style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 13.0,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

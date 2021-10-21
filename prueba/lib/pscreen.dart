import 'package:flutter/material.dart';

const cPrimaryColor = Color(0xFF8C97E9); // Color primario
const cSecundaryColor = Color(0xFFECEAFF); // Color secundario
const cFont = Color(0xFF8F81FE);
const cSearchBar = Color(0xFFF6F6F6); // Color searchbar
const double dDefaultPadding = 20.0; // Padding y margin default

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Personal"),
        centerTitle: true,
        // en este titleTextStyle damos color y tamano a la fuente
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
        // el color del appbar es blanco
        backgroundColor: Colors.white,
        // leading se ocupa para colocar el icono para la searchbar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {}, // esto se utilizara para la accion del boton
        ),
      ),
      body: ListView(
        // para lograr el efecto de rebote se utilizo physics: BouncingScrollPhysics y parent forma parte tambien de este
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          //* -------------------------diseno de la SearchBar----------------------------------------------------//
          Row(
            // esto se utiliza para centrar los widgets
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo ------------- entrada de busqueda ------------------------- //
              Container(
                alignment: Alignment.center,
                height: 50.0,
                width: 262.0,
                // padding para el texto de search for
                padding: const EdgeInsets.only(left: dDefaultPadding),
                // margin para separar el container
                margin: const EdgeInsets.only(bottom: dDefaultPadding),
                // con esto se logran los bordes redondeados
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: cSearchBar,
                ),
                // para lograr la opacidad de los elementos que tiene la searchbar se ocupo Opacity con un valor de 0.3
                child: const Opacity(
                  opacity: 0.2,
                  // para que al contenedor de le pudiera dar entrada se ocupo TextField y un InputDecoration
                  child: TextField(
                    decoration: InputDecoration(
                      // muestra el texto "Search for" en el textfield
                      hintText: "Search for",
                      // deshabilita los efectos predeterminados de los bordes
                      enabledBorder: InputBorder.none,
                      // deshabilita los efectos predeterminados de los bordes
                      focusedBorder: InputBorder.none,
                      // con suffixIcon se logra colocar el icono de la lupa y se agrega el tamano y el color
                      suffixIcon: Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // todo -------- este conteiner es para BOTON DE FILTRADO ------------//
              Container(
                  height: 50.0,
                  width: 50.0,
                  margin: const EdgeInsets.only(
                      left: 13.0, bottom: dDefaultPadding),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: cSearchBar),
                  // de nuevo se uso Opacity para lograr la opacidad del diseno
                  child: Opacity(
                    opacity: 0.2,
                    // para el icono se utilizo IconButton
                    child: IconButton(
                        // esto se utilizara para la accion del boton
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune,
                          color: Colors.black,
                        )),
                  )),
            ],
          ),
          //* --------------------------APARTIR DE AQUI SE EMPIEZA A DISENAR LA INFORMACION DEL PERSONAL--------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114.0,
            margin: const EdgeInsets.symmetric(horizontal: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35.0,
                  width: 2.0,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
                  ),
                )
              ],
            ),
          ),
          //! ----------------------------------------------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114,
            margin: const EdgeInsets.only(
                top: 12.0, right: dDefaultPadding, left: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
                  ),
                )
              ],
            ),
          ),
          //! ----------------------------------------------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114,
            margin: const EdgeInsets.only(
                top: 12.0, right: dDefaultPadding, left: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
                  ),
                )
              ],
            ),
          ),
          //! ----------------------------------------------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114,
            margin: const EdgeInsets.only(
                top: 12.0, right: dDefaultPadding, left: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
                  ),
                )
              ],
            ),
          ),
          //! ----------------------------------------------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114,
            margin: const EdgeInsets.only(
                top: 12.0, right: dDefaultPadding, left: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
                  ),
                )
              ],
            ),
          ),
          //! ----------------------------------------------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114,
            margin: const EdgeInsets.only(
                top: 12.0, right: dDefaultPadding, left: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
                  ),
                )
              ],
            ),
          ),
          //! ----------------------------------------------------------------------------//
          //todo ---------------- Tarjeta de informacion ---------------------------------//
          Container(
            // este contenedor se usa de FONDO para colocar los demas widgets
            height: 114,
            margin: const EdgeInsets.only(
                top: 12.0, right: dDefaultPadding, left: dDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: cPrimaryColor),
            // aqui se ocupa Stack para lograr el diseno de las TARJETAS DE INFORMACION
            child: Stack(
              children: [
                //todo ------------ linea junto al texto ------------//
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 15.0, top: 22.0),
                ),
                //todo ------------ Informacion ---------------------//
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 25.0, top: 22.0),
                    child: const Text(
                      "Luis Andres Duran Robles \n07:00 - 08:00",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                //todo ------------ icono --------------------------//
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25.0, top: 10.0),
                    child: const Image(
                      image: AssetImage('img/man.png'),
                      height: 55,
                      width: 55,
                    ),
                  ),
                ),
                // todo ------------- boton ------------------//
                // se uso Align para colocar el BOTON centrado en la parte baja
                Align(
                  alignment: Alignment.bottomCenter,
                  // el container se uso para poder agregar altura y anchura
                  child: Container(
                    height: 20.0,
                    width: 274.0,
                    // la separacion de la parte baja es de 18
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(cSecundaryColor),
                        ),
                        child: const Text("Sistemas Computacionales",
                            style: TextStyle(fontSize: 12.0, color: cFont))),
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

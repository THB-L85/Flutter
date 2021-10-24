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
        // con esta linea centramos el titulo
        centerTitle: true,
        title: const Text("Avisos"),
        // con titleTextStyle damos color y tamano al titulo
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20.0),
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
                child: const TextField(
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
                // esta linea agrega el boton con icono y su color
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
            color: cPrimaryColor.withOpacity(0.61),
          )
        ],
      ),
    );
  }
}

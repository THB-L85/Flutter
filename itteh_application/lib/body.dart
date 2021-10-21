import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:itteh_application/colores.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Esto no dara el total del alto y ancho de nuestra pantalla
    Size size = MediaQuery.of(context).size;
    return ListView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: <Widget>[
        // a los codigos se les hizo un extract widget para organizarlo mejor
        SearchBar(size: size),
        ScrollCont(),
      ],
    );
  }
}

// aqui empieza el widget para el contenido
class ScrollCont extends StatelessWidget {
  const ScrollCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 114,
          margin:
              EdgeInsets.symmetric(vertical: 6, horizontal: dDefaultPadding),
          decoration: BoxDecoration(
              color: cPrimaryColor, borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          height: 120,
          margin:
              EdgeInsets.symmetric(vertical: 6, horizontal: dDefaultPadding),
          decoration: BoxDecoration(
              color: cPrimaryColor, borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          height: 120,
          margin:
              EdgeInsets.symmetric(vertical: 6, horizontal: dDefaultPadding),
          decoration: BoxDecoration(
              color: cPrimaryColor, borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          height: 120,
          margin:
              EdgeInsets.symmetric(vertical: 6, horizontal: dDefaultPadding),
          decoration: BoxDecoration(
              color: cPrimaryColor, borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          height: 120,
          margin:
              EdgeInsets.symmetric(vertical: 6, horizontal: dDefaultPadding),
          decoration: BoxDecoration(
              color: cPrimaryColor, borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          height: 120,
          margin:
              EdgeInsets.symmetric(vertical: 6, horizontal: dDefaultPadding),
          decoration: BoxDecoration(
              color: cPrimaryColor, borderRadius: BorderRadius.circular(20)),
        ),
      ],
    );
  }
}

// Aqui empieza el widget para la barra de busqueda
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Esto nos dara el 20% del total de la pantalla
      height: size.height * 0.09,
      color: Colors.white,
      // Esto le da espacio a la barra de busqueda
      margin: EdgeInsets.only(bottom: 8),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0, //
            bottom: 0, // Esto posiciona la barra de busqueda al centro
            left: 0, //
            right: 0, //
            child: Container(
              // esto alinea el contenedor
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                  vertical: 11, horizontal: dDefaultPadding),
              // esto alinea el texto del contenedor
              padding: EdgeInsets.symmetric(horizontal: dDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: cSerchBar,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Opacity(
                opacity: 0.2,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Serch for",
                      hintStyle: TextStyle(
                        color: cFontColor.withOpacity(0.4),
                      ),
                      // esto quita los bordes cuando se esta escribiendo
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon:
                          Icon(Icons.search) // con esto colocamos el icono
                      //SvgPicture.asset("assets/icons/search.svg"),
                      ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

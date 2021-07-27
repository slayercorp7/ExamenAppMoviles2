import 'package:flutter/material.dart';
import 'package:examen_parcial/UI/widget/Inicio.dart';
import 'package:examen_parcial/UI/widget/register.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            //child: Inicio(),
            //descomentar para visualizar la segunda pantalla y comentar la primera.
            child: Register(),
          )
        ],
      ),
    );
  }
}

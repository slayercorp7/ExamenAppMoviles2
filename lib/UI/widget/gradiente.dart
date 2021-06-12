import 'package:flutter/material.dart';

class Gradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFFB5E7E1), Color(0xB689939B)],
        begin: const FractionalOffset(1.0, 0.1),
        end: const FractionalOffset(1.0, 0.6),
      )),
    );
  }
}

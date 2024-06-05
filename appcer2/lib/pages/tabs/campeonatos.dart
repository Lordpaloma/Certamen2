import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class  CampeonatosTab extends StatelessWidget {
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: fondo, fit: BoxFit.cover)
        ),
      )
    );
  }
}
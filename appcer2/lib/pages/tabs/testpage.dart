import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/equipos_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
Widget build(BuildContext context) {
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');
    return Scaffold(
      appBar: AppBar(
        title:Container(
            height: 40,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: fondo, fit: BoxFit.cover),
        ),
        child: Column(
            children: [
              Row(
                children: [Text("hola")],
              ),
              Row(
                children: [Text("ayua")],
              ),
            ],
            ),
            
            ),
      );
  }
}
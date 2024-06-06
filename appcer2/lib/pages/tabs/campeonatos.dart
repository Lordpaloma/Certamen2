import 'package:appcer2/services/http_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampeonatosTab extends StatefulWidget {
  @override
  State<CampeonatosTab> createState() => _CampeonatosTabState();
}

class _CampeonatosTabState extends State<CampeonatosTab> {
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: fondo, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:appcer2/services/http_service.dart';

class CampeonatosTile extends StatefulWidget {
  final String nombre;
  final String juego;
  final String pais;
  final int estado;
  final String fecha;

  CampeonatosTile(
      {this.nombre = 'sin nombre',
      this.juego = '-',
      this.pais = 'xx',
      this.estado = 0,
      this.fecha ='-'});

  @override
  State<CampeonatosTile> createState() => _CampeonatosTileState();
}

class _CampeonatosTileState extends State<CampeonatosTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        color: Color.fromARGB(173, 255, 255, 255),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.gamepad_sharp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('${this.widget.nombre}',
                  style: TextStyle(fontSize:16),),
                  Text(
                    '${this.widget.juego}',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${this.widget.fecha}',
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

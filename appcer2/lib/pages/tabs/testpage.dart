import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/equipos_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestPage extends StatefulWidget {
  final String nombre;
  final String acronimo;
  final String entrenador;
  final int id;

  TestPage(
    {this.nombre = '-',
    this.acronimo = 'xx',
    this.entrenador ='-',
    required this.id,
    }
  );
  @override
   State<TestPage> createState() => _TestPageState();
}
class _TestPageState extends State<TestPage> {
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');
  @override
  Widget build(BuildContext context) {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre de Equipo: ${widget.nombre}', style: TextStyle(fontSize:16),),
                  Text('Acronimo:  ${widget.acronimo}', style: TextStyle(fontSize: 14)),
                  Text('Entrenador:  ${widget.entrenador}',style: TextStyle(fontSize: 14)),
                  Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jugadores:'),
                          //Text(jugadores['nickname']),
                          //Text(jugadores['pais']),
                        ],
                      )
                    ],
                  ),
                ),
                ],
                
              ),
            ],
          ),
        ],
      ),
      ),

      ); 
  }
}
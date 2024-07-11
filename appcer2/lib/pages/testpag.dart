
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestPage extends StatefulWidget {
  //const TestPage({super.key});

  final String nombre;
  final String acronimo;
  final String entrenador;
  final int id;

  TestPage(
      {this.nombre = '-',
      this.acronimo = 'xx',
      this.entrenador = '-',
      required this.id});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');
    return Scaffold(
        appBar: AppBar(
          title: Container(
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
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white60),
                color: Color.fromARGB(173, 255, 255, 255),
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nombre de Equipo: ${widget.nombre}',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Acronimo:  ${widget.acronimo}',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Entrenador:  ${widget.entrenador}',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white60),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jugadores:',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ))
        /*Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              
                  Text('Nombre de Equipo: ', style: TextStyle(fontSize:16),),
                  Text('Acronimo:  ', style: TextStyle(fontSize: 14)),
                  Text('Entrenador:  ',style: TextStyle(fontSize: 14)),
                
            ),*/

        /* Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jugadores:', style: TextStyle(fontSize:20),),
                //Text(jugadores['nickname']),
                //Text(jugadores['pais']),
              ],
            ),*/

        );
  }
}

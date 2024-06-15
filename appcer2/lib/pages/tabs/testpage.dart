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
            Row( children: [
              Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nombre de Equipo: ',style: TextStyle(fontSize: 16),),
                Text('Acronimo:  ', style: TextStyle(fontSize: 14),),
                Text('Entrenador:  ', style: TextStyle(fontSize: 14),),
              ],
            ),
            Container(
              
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white60),
              ),
              child: Row( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jugadores:',style: TextStyle(fontSize: 20),),
                ],
              )
            ),
            ],
            ),
          ],
        ),
        
        ),
        
        )
      
        
    )
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
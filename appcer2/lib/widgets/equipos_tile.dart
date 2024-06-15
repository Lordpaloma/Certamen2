import 'package:flutter/material.dart';
import 'package:appcer2/pages/tabs/testpage.dart';
import 'package:appcer2/services/http_service.dart';


class EquiposTile extends StatefulWidget {
  final String nombre;
  final String acronimo;
  final String entrenador;

  EquiposTile(
      {this.nombre = '-',
      this.acronimo = 'xx',
      this.entrenador ='-'}
      );

  @override
  State<EquiposTile> createState() => _EquiposTileState();
}

class _EquiposTileState extends State<EquiposTile> {
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () {
        final route = MaterialPageRoute(builder: (context) {
          return TestPage();
        });
        Navigator.push(context, route);
      }, 
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), 
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white60),
          color: Color.fromARGB(173, 255, 255, 255),
        ),
        
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Icon(Icons.gamepad_outlined),
          
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('${this.widget.nombre} | ',
                    style: TextStyle(fontSize:16),),
                    Text(
                      '${this.widget.acronimo}',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
    
  }
}

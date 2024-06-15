import 'package:appcer2/pages/campeonato_detalle.dart';
import 'package:flutter/material.dart';
// Asegúrate de ajustar la ruta según la estructura de tu proyecto

class CampeonatosTile extends StatefulWidget {
  final String nombre;
  final String juego;
  final String pais;
  final int estado;
  final String fecha;
  final int id;

  CampeonatosTile({
    this.nombre = 'sin nombre',
    this.juego = '-',
    this.pais = 'xx',
    this.estado = 0,
    this.fecha = '-',
    required this.id,
  });

  @override
  State<CampeonatosTile> createState() => _CampeonatosTileState();
}

class _CampeonatosTileState extends State<CampeonatosTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        color: Color.fromARGB(173, 255, 255, 255),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.gamepad_sharp),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' ${widget.nombre}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Juego: ${widget.juego}',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                'Fecha de inicio: ${widget.fecha}',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) 
                  => CampeonatoDetalle(
                    id: widget.id,
                    //nombre: widget.nombre,
                    //juego: widget.juego,
                    //pais: widget.pais,
                    //estado: widget.estado,
                    //fecha: widget.fecha,
                  ),
                ),
              );
            },
            child: Text('Ver Detalles'),
          ),
        ],
      ),
    );
  }
}

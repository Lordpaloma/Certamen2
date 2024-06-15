import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// Asegúrate de ajustar la ruta según la estructura de tu proyecto

class CampeonatoDetalletiles extends StatefulWidget {
  final String nombre;
  final String juego;
  final String pais;
  final int estado;
  final String fecha;
  final String reglanombre;
  final String regladetalle;
  final int premiomonto;
  final int premiolugar;
  final int id;

  //final int Reglanombre;

  CampeonatoDetalletiles({
    this.nombre = 'sin nombre',
    this.juego = '-',
    this.pais = 'xx',
    this.estado = 0,
    this.fecha = '-',
    this.reglanombre = '',
    this.premiomonto = 0,
    this.regladetalle = '',
    this.premiolugar = 0,
    required this.id,

    //this.Reglanombre = 0
  });

  @override
  State<CampeonatoDetalletiles> createState() => _CampeonatoDetalletilesState();
}

class _CampeonatoDetalletilesState extends State<CampeonatoDetalletiles> {
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
              Text('Primer Lugar ${widget.premiomonto}'),
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
                        Text('Reglas'),
                        Text('${widget.reglanombre}'),
                        Text('${widget.regladetalle}')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Premios'),
                        Text('Primer Lugar ${widget.premiolugar}'),
                        Text('Monto  ${widget.premiomonto} USD')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

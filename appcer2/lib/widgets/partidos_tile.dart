import 'package:appcer2/pages/partido_detalle.dart';
import 'package:flutter/material.dart';

class PartidosTiles extends StatefulWidget {
  final String fecha;
  final int campeonatoid;
  final int id;

  PartidosTiles({
    this.campeonatoid = 0,
    this.fecha = '-',
    required this.id,
  });

  @override
  State<PartidosTiles> createState() => _PartidosTilesState();
}

class _PartidosTilesState extends State<PartidosTiles> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final route = MaterialPageRoute(builder: (context) {
          return PartidoDetalle( id: widget.id,);
        });
        Navigator.push(context, route);
      },
      child: Container(
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
                  'Campeonato  ${widget.campeonatoid}',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Fecha de inicio: ${widget.fecha}',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

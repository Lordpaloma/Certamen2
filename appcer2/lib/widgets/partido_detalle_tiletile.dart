import 'package:flutter/material.dart';

class PartidoDetalletile extends StatefulWidget {
  final int equipoid;
  final int partidoid;
  final String detalle;
  final int id;
  final String nombreequipo;

  PartidoDetalletile(
      {required this.detalle,
      required this.equipoid,
      required this.partidoid,
      required this.id,
      required this.nombreequipo});

  @override
  State<PartidoDetalletile> createState() => _PartidoDetalletileState();
}

class _PartidoDetalletileState extends State<PartidoDetalletile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        color: Color.fromARGB(173, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(5, 10, 20, 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 6, 3, 78),
              border:
                  Border(bottom: BorderSide(color: Colors.black54, width: 5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ID Partido ${widget.partidoid}',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
          Text('Ganador: ${widget.nombreequipo}'),
          Text('Resultado: ${widget.detalle}'),
          Text('Id de equipo ganador: ${widget.equipoid}')
        ],
      ),
    );
  }
}

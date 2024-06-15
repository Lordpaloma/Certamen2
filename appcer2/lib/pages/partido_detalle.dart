import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/partido_detalle_tiletile.dart';
import 'package:flutter/material.dart';

class PartidoDetalle extends StatefulWidget {
  final int id;
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');
  PartidoDetalle({required this.id});

  @override
  State<PartidoDetalle> createState() => _PartidoDetalleState();
}

class _PartidoDetalleState extends State<PartidoDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Partido'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: widget.fondo, fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: HttpService().resultado(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        var resultado = snapshot.data[widget.id-1];
                        return PartidoDetalletile(
                          detalle: resultado['detalle'],
                          partidoid: resultado['partido_id'],
                          equipoid: resultado['equipo_id'],
                          id: resultado['id'],
                          nombreequipo: resultado['equipo']['nombre'],

                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

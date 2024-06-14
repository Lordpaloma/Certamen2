import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/campeonato_detalle.dart';

import 'package:flutter/material.dart';

class CampeonatoDetalle extends StatefulWidget {
  final int id;

  CampeonatoDetalle({required this.id});
  @override
  State<CampeonatoDetalle> createState() => _CampeonatoDetalleState();
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');
}

class _CampeonatoDetalleState extends State<CampeonatoDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Campeonato'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: widget.fondo, fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
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
                    'Detalle Campeonato',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: HttpService().campeonatos(),
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
                      var campeonato = snapshot.data[widget.id - 1];

                      return CampeonatoDetalletiles(
                        nombre: campeonato['nombre'],
                        juego: campeonato['juego'],
                        pais: campeonato['pais'],
                        fecha: campeonato['fecha'],
                        reglanombre: campeonato['reglas'][widget.id]['nombre'],
                        regladetalle: campeonato['reglas'][widget.id]
                            ['detalle'],
                        premiomonto: campeonato['premios'][widget.id - 1]
                            ['monto'],
                        premiolugar: campeonato['premios'][widget.id - 1]
                            ['lugar'],
                        id: campeonato['id'],
                        //Reglanombre: campeonato['regla']['nombre'],
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/campeonatos_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampeonatosTab extends StatefulWidget {
  @override
  State<CampeonatosTab> createState() => _CampeonatosTabState();
}

class _CampeonatosTabState extends State<CampeonatosTab> {
  final AssetImage fondo = AssetImage('assets/images/campeonatos.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: fondo, fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: HttpService().campeonatos(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      var campeonato = snapshot.data[index];
                      return CampeonatosTile(
                        nombre: campeonato['nombre'],
                        juego: campeonato['juego'],
                        pais: campeonato['pais'],
                        fecha: campeonato['fecha'],
                        estado: campeonato['estado'],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

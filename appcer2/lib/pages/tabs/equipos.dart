import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/equipos_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EquiposTab extends StatefulWidget {
  const EquiposTab({super.key});
  @override
  State<EquiposTab> createState() => _EquiposTabState();
}

class _EquiposTabState extends State<EquiposTab> {
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
                future: HttpService().equipos(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      var equipos = snapshot.data[index];
                      return EquiposTile(
                        nombre: equipos['nombre'],
                        acronimo: equipos['acronimo'],
                        entrenador: equipos['entrenador'],
                        id: equipos['id'],
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
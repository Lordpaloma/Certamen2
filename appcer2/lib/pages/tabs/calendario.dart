import 'package:appcer2/pages/partidos_agregar.dart';
import 'package:appcer2/services/http_service.dart';
import 'package:appcer2/widgets/partidos_tile.dart';
import 'package:flutter/material.dart';

class CalendarioTab extends StatefulWidget {
  const CalendarioTab({super.key});

  @override
  State<CalendarioTab> createState() => _CalendarioTabState();
}

class _CalendarioTabState extends State<CalendarioTab> {
  final AssetImage fondo = AssetImage('assets/images partidos.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: fondo, fit: BoxFit.cover),
        ),

        // miau
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: HttpService().partidos(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      var partido = snapshot.data[index];
                      return PartidosTiles(
                          campeonatoid: partido['campeonato_id'],
                          fecha: partido['fecha'],
                          id: partido['id']);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.blueAccent,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          MaterialPageRoute ruta = MaterialPageRoute(
            builder: (context) => PartidosAgregar(),
          );
          Navigator.push(context, ruta).then(
            (value) {
              setState(() {});
            },
          );
        },
      ),
    );
  }
}

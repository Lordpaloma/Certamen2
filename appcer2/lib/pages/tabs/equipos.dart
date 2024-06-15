import 'package:appcer2/pages/equipo_agregar.dart';
import 'package:appcer2/pages/jugadores_agregar.dart';
import 'package:flutter/material.dart';

class EquiposTab extends StatefulWidget {
  const EquiposTab({super.key});

  @override
  State<EquiposTab> createState() => _EquiposTabState();
}

class _EquiposTabState extends State<EquiposTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              child: FilledButton(
                style:
                    FilledButton.styleFrom(backgroundColor: Colors.lightBlue),
                child: Text('agregar Jugador a equipo'),
                onPressed: () {
                  MaterialPageRoute ruta = MaterialPageRoute(
                    builder: (context) => JugadorAgregar(),
                  );
                  Navigator.push(context, ruta).then((value) {
                    setState(() {});
                  });
                },
              ),
            )
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
            builder: (context) => EquipoAgregar(),
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

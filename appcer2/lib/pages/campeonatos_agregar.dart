import 'package:appcer2/services/http_service.dart';
import 'package:flutter/material.dart';

class CampeonatosAgregar extends StatefulWidget {
  const CampeonatosAgregar({super.key});

  @override
  State<CampeonatosAgregar> createState() => _CampeonatosAgregarState();
}

class _CampeonatosAgregarState extends State<CampeonatosAgregar> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController juegoController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController fecha = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String paisSeleccionado = 'Chile';

  String errNombre = "";
  String errjuego = "";
  String errpais = "";
  String errestado = "";
  String errfecha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Campeonato'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
                controller: nombreController,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Juego'),
                controller: juegoController,
              ),
              FutureBuilder(
                future: HttpService().paises(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Cargando paises...');
                  }
                  List<dynamic> paises = snapshot.data;
                  return DropdownButtonFormField<String>(
                    value: paisSeleccionado,
                    items: paises.map<DropdownMenuItem<String>>((pais) {
                      return DropdownMenuItem<String>(
                        child: Text(pais['name']['common']),
                        value: pais['name']['common'],
                      );
                    }).toList(),
                    onChanged: (opcionSeleccionada) {
                      paisSeleccionado = opcionSeleccionada!;
                      print('PAIS: $paisSeleccionado');
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

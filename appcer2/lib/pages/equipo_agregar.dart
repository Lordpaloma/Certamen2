import 'package:appcer2/services/http_service.dart';
import 'package:flutter/material.dart';

class EquipoAgregar extends StatefulWidget {
  const EquipoAgregar({super.key});

  @override
  State<EquipoAgregar> createState() => _EquipoAgregarState();
}

class _EquipoAgregarState extends State<EquipoAgregar> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController acronimoController = TextEditingController();
  TextEditingController entrenadorController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String errNombre = "";
  String errAcronimo = "";
  String errEntrenador = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Equipo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(5, 10, 20, 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 3, 78),
                  border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agregar Equipo',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
                controller: nombreController,
              ),
              Text(
                errNombre,
                style: TextStyle(color: Colors.red),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Entrenador'),
                controller: entrenadorController,
              ),
              Text(
                errEntrenador,
                style: TextStyle(color: Colors.red),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Acronimo'),
                controller: acronimoController,
              ),
              Text(
                errAcronimo,
                style: TextStyle(color: Colors.red),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 6, 3, 78)),
                  child: Text('Agregar equipo'),
                  onPressed: () async {
                    var respuesta = await HttpService().equiposAgregar(
                      nombreController.text,
                      acronimoController.text,
                      entrenadorController.text,
                    );
                    if (respuesta['message'] != null) {
                      var errores = respuesta['errors'];
                      setState(() {
                        errNombre = errores['nombre'] != null
                            ? errores['nombre'][0]
                            : '';
                        errAcronimo = errores['acronimo'] != null
                            ? errores['acronimo'][0]
                            : '';
                        errEntrenador = errores['entrenador'] != null
                            ? errores['entrenador'][0]
                            : '';
                      });
                      print(errNombre);
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

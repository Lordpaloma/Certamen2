import 'package:appcer2/services/http_service.dart';
import 'package:flutter/material.dart';

class JugadorAgregar extends StatefulWidget {
  const JugadorAgregar({super.key});

  @override
  State<JugadorAgregar> createState() => _JugadorAgregarState();
}

class _JugadorAgregarState extends State<JugadorAgregar> {
  TextEditingController equipo_idController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController paisController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String paisSeleccionado = 'Chile';
  int? equipoSeleccionado;

  String errNickname = "";
  String errEquipo = "";
  String errPais = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Jugador'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nickname'),
                controller: nicknameController,
              ),
              Text(errNickname, style: TextStyle(color: Colors.red)),
              FutureBuilder(
                future: HttpService().paises(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Cargando paises...');
                  }
                  List<dynamic> paises = snapshot.data;
                  return DropdownButtonFormField<String>(
                    // items: [
                    //   DropdownMenuItem<String>(child: Text('Opción 1'), value: 'op1'),
                    //   DropdownMenuItem<String>(child: Text('Opción 2'), value: 'op2'),
                    // ],
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
              Text(errPais, style: TextStyle(color: Colors.red)),
              FutureBuilder(
                future: HttpService().equipos(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Cargando equipos...');
                  }
                  List<dynamic> equipos = snapshot.data;
                  equipoSeleccionado = equipoSeleccionado ?? equipos[0]['id'];
                  return DropdownButtonFormField<int>(
                    value: equipoSeleccionado,
                    items: equipos.map<DropdownMenuItem<int>>((equipo) {
                      return DropdownMenuItem<int>(
                        child: Text(equipo['nombre']),
                        value: equipo['id'],
                      );
                    }).toList(),
                    onChanged: (opcionSeleccionada) {
                      equipoSeleccionado = opcionSeleccionada!;
                    },
                  );
                },
              ),
              Text(errEquipo, style: TextStyle(color: Colors.red)),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text('Agregar Jugador'),
                  onPressed: () async {
                    var respuesta = await HttpService().jugadorAgregar(
                        equipoSeleccionado!,
                        nicknameController.text,
                        paisSeleccionado);

                    if (respuesta['message'] != null) {
                      var errores = respuesta['errors'];
                      setState(() {
                        errNickname = errores['nickname'] != null
                            ? errores['nickname'][0]
                            : '';
                        errPais =
                            errores['pais'] != null ? errores['pais'][0] : '';
                        errEquipo = errores['equipo_id'] != null
                            ? errores['equipo_id'][0]
                            : '';
                      });
                      print(errNickname);
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

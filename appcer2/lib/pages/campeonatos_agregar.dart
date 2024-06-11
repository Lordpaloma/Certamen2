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
  TextEditingController fechaController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String paisSeleccionado = 'Chile';
  bool fueJugado = false;

  String errNombre = "";
  String errjuego = "";
  String errpais = "";
  String errestado = "";
  String errfecha = "";

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        fechaController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Campeonato'),
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
                  color: Colors.blueAccent,
                  border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agregar Campeonato',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
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
                      setState(() {
                        paisSeleccionado = opcionSeleccionada!;
                      });
                      print('PAIS: $paisSeleccionado');
                    },
                  );
                },
              ),
              TextFormField(
                controller: fechaController,
                decoration: InputDecoration(
                  labelText: 'Fecha',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context),
                  ),
                ),
                readOnly: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '¿Fue jugado?',
                    style: TextStyle(fontSize: 16),
                  ),
                  Switch(
                    value: fueJugado,
                    onChanged: (bool value) {
                      setState(() {
                        fueJugado = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

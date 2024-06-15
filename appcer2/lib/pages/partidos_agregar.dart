// formulario para crear partidosen un campeonanto, recordar campeonatoid y fecha
import 'package:appcer2/services/http_service.dart';
import 'package:flutter/material.dart';

class PartidosAgregar extends StatefulWidget {
  const PartidosAgregar({super.key});

  @override
  State<PartidosAgregar> createState() => _PartidosAgregarState();
}

class _PartidosAgregarState extends State<PartidosAgregar> {
  TextEditingController campeonatoidController = TextEditingController();
  TextEditingController fechaController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String paisSeleccionado = 'Chile';

  String errcampeonatoid = "";
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
        title: Text('Agregar Partido'),
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
                      'Agregar Partido',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Id del campeonato'),
                controller: campeonatoidController,
              ),
              Text(
                errcampeonatoid,
                style: TextStyle(color: Colors.red),
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
              // En este textformfield se crea para dar la fecha
              Container(
                margin: EdgeInsets.all(10),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 6, 3, 78)),
                  child: Text('Agregar Partido'),
                  onPressed: () async {
                    var respuesta = await HttpService().partidosAgregar(
                        //hay que crear en db partidosAgregar <3
                        campeonatoidController.text,
                        fechaController.text);
                    if (respuesta['message'] != null) {
                      var errores = respuesta['errors'];
                      setState(() {
                        errcampeonatoid = errores['campeonatoid'] != null
                            ? errores['campeonatoid'][0]
                            : '';
                      });
                      print(errcampeonatoid);
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

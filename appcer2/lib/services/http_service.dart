import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiUrl = 'http://10.0.2.2:8000/api';

  Future<List<dynamic>> campeonatos() async {
    return listarDatos('Campeonatos');
  }

  Future<List<dynamic>> equipos() async {
    return listarDatos('equipos');
  }

  Future<List<dynamic>> jugadores() async {
    return listarDatos('jugadores');
  }

  Future<List<dynamic>> partidos() async {
    return listarDatos('Partidos');
  }

    Future<List<dynamic>> reglas() async {
    return listarDatos('Reglas');
  }
    Future<List<dynamic>> resultado() async {
    return listarDatos('Resultado');
  }

  Future<List<dynamic>> listarDatos(String coleccion) async {
    var respuesta = await http.get(Uri.parse(apiUrl + '/' + coleccion));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }
    print(respuesta.statusCode);
    return [];
  }

  Future<List<dynamic>> paises() async {
    var respuesta = await http.get(Uri.parse(
        'https://restcountries.com/v3.1/all?fields=name,cca2&lang=spanish'));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }

    return [];
  }

  Future<LinkedHashMap<String, dynamic>> campeonatosAgregar(
      String nombre, String juego, String pais, String fecha,) async {
    var url = Uri.parse('$apiUrl/Campeonatos');
    var respuesta = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json'
      },
      body: json.encode(<String, dynamic>{
        'nombre': nombre,
        'juego': juego,
        'pais': pais,
        'fecha': fecha,
      }),
    );
    return json.decode(respuesta.body);
  }

  Future<LinkedHashMap<String, dynamic>> equiposAgregar(
    String nombre,
    String acronimo,
    String entrenador,
  ) async {
    var url = Uri.parse('$apiUrl/Campeonatos');
    var respuesta = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json'
      },
      body: json.encode(<String, dynamic>{
        'nombre': nombre,
        'acronimo': acronimo,
        'entrenador': entrenador,
      }),
    );
    return json.decode(respuesta.body);
  }

    Future<LinkedHashMap<String, dynamic>> partidosAgregar(
    int campeonato_id,
    String fecha,
  ) async {
    var url = Uri.parse('$apiUrl/Partidos');
    var respuesta = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json'
      },
      body: json.encode(<String, dynamic>{
        'campeonato_id': campeonato_id,
        'fecha': fecha,
      }),
    );
    return json.decode(respuesta.body);
  }
}

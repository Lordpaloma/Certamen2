import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiUrl = 'http://127.0.0.1:8000/api';

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
    return listarDatos('partidos');
  }


    Future<List<dynamic>> listarDatos(String coleccion) async {
    var respuesta = await http.get(Uri.parse(apiUrl + '/' + coleccion));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }
    print(respuesta.statusCode);
    return [];
  }


  }
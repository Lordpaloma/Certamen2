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

  Future<List<dynamic>> paises() async {
    var respuesta = await http.get(Uri.parse(
        'https://restcountries.com/v3.1/all?fields=name,cca2&lang=spanish'));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }

    return [];
  }

  Future<LinkedHashMap<String, dynamic>> campeonatosAgregar(String nombre,
      String juego, String pais, bool estado, String fecha) async {
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
        'estado': estado,
        'fecha': fecha,
      }),
    );
    return json.decode(respuesta.body);
  }

  Future<Map<String, dynamic>> obtenerDatosCampeonato(int idCampeonato) async {
    var campeonatoUrl = Uri.parse('$apiUrl/campeonatos/$idCampeonato');

    try {
      var campeonatoRespuesta = await http.get(campeonatoUrl);
      if (campeonatoRespuesta.statusCode == 200) {
        var campeonato = json.decode(campeonatoRespuesta.body);

        var reglasUrl = Uri.parse('$apiUrl/reglas?campeonato_id=$idCampeonato');
        var reglasRespuesta = await http.get(reglasUrl);
        var reglas = json.decode(reglasRespuesta.body);

        var premiosUrl =
            Uri.parse('$apiUrl/premios?campeonato_id=$idCampeonato');
        var premiosRespuesta = await http.get(premiosUrl);
        var premios = json.decode(premiosRespuesta.body);

        return {
          'campeonato': campeonato,
          'reglas': reglas,
          'premios': premios,
        };
      } else {
        throw Exception('Error al obtener datos del campeonato');
      }
    } catch (error) {
      throw Exception('Error al obtener datos del campeonato: $error');
    }
  }
}

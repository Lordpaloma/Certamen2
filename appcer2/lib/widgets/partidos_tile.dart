
import 'package:flutter/material.dart';

class PartidosTiles extends StatefulWidget {
  final String fecha;
  final int campeonatoid;
  final int id;

    PartidosTiles({
    this.campeonatoid = 0,
    this.fecha = '-',
    required this.id,
  });

  @override
  State<PartidosTiles> createState() => _PartidosTilesState();
}

class _PartidosTilesState extends State<PartidosTiles> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
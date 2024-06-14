import 'package:flutter/material.dart';
class CampeonatoDetalle extends StatefulWidget {
  

  @override
  State<CampeonatoDetalle> createState() => _CampeonatoDetalleState();
}

class _CampeonatoDetalleState extends State<CampeonatoDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Campeonato'),
      ),
    );
  }
}
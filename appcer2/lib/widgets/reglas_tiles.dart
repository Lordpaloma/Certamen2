import 'package:flutter/material.dart';

class ReglasTiles extends StatefulWidget {
  final String reglanombre;
  final String regladetalle;
  final int id;

  ReglasTiles(
      {this.reglanombre = '', this.regladetalle = '', required this.id});

  @override
  State<ReglasTiles> createState() => _ReglasTilesState();
}

class _ReglasTilesState extends State<ReglasTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        color: Color.fromARGB(173, 255, 255, 255),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Column(
          children: [
            Text('${widget.reglanombre}'),
            Text('${widget.regladetalle}')
          ],
        )],
      ),
    );
  }
}

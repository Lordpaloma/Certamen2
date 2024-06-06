import 'package:appcer2/pages/tabs/calendario.dart';
import 'package:appcer2/pages/tabs/campeonatos.dart';
import 'package:appcer2/pages/tabs/equipos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            height: 40,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
          bottom: TabBar(
            labelColor: Color.fromARGB(222, 229, 221, 221),
            indicatorColor: const Color.fromARGB(255, 101, 94, 94),
            tabs: [
              Tab(text: 'Campeonatos'),
              Tab(text: 'Equipos'),
              Tab(text: 'Calendario')
            ],
          ),
        ),
        body: TabBarView(
          children: [CampeonatosTab(), EquiposTab(), CalendarioTab()],
        ),
      ),
    );
  }
}

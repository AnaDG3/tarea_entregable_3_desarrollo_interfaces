import 'package:flutter/material.dart';

import 'Pantalla_Secundaria.dart';
import 'datos_planetas.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false, // Opcional: quita la etiqueta de debug
    home: PantallaPrincipal(),
  ),
);

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  static Planeta tierra = obtenerPlanetaPorId("PLANET-001");
  static Planeta venus = obtenerPlanetaPorId("PLANET-002");
  static Planeta mercurio = obtenerPlanetaPorId("PLANET-003");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true, title: Text("Sistema Solar", style: TextStyle(color: Colors.white), ), backgroundColor: Colors.black45),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              ListTile(title: Text(tierra.nombre), subtitle: Text(tierra.Radio),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(planeta: tierra),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(tierra.imagenUrl, fit: BoxFit.cover)),
              ),
              ListTile(title: Text(venus.nombre), subtitle: Text(venus.Radio),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(planeta: venus),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(venus.imagenUrl, fit: BoxFit.cover)),
              ),
              ListTile(title: Text(mercurio.nombre), subtitle: Text(mercurio.Radio),
                trailing: IconButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PantallaSecundaria(planeta: mercurio),
                  ),
                ), icon: Icon(Icons.chevron_right)),
                leading: Container(child: Image.asset(mercurio.imagenUrl, fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
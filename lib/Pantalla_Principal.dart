import 'package:flutter/material.dart';

import 'Pantalla_Secundaria.dart';
import 'datos_planetas.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PantallaPrincipal(),
  ),
);

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  static Planeta tierra = obtenerPlanetaPorId("PLANET-001");
  static Planeta venus = obtenerPlanetaPorId("PLANET-002");
  static Planeta mercurio = obtenerPlanetaPorId("PLANET-003");

  static List<Planeta> planetas = [
    tierra,
    venus,
    mercurio,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sistema Solar",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black45,
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              for (int i = 0; i < planetas.length; i++) ...[
                ListTile(
                  title: Text(planetas[i].nombre),
                  subtitle: Text(planetas[i].Radio),
                  trailing: IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PantallaSecundaria(planeta: planetas[i]),
                      ),
                    ),
                    icon: Icon(Icons.chevron_right),
                  ),
                  leading: Container(
                    child: Image.asset(
                      planetas[i].imagenUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (i < planetas.length - 1)
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 1,
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
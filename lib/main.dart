import 'package:flutter/material.dart';

import 'Pantalla_Principal.dart';
import 'Pantalla_Secundaria.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',

    onGenerateRoute: (settings) {
      switch (settings.name) {

        case '/':
          return MaterialPageRoute(
            builder: (context) => const PantallaPrincipal(),
          );

        case '/detalles':
          return MaterialPageRoute(
            builder: (context) => const PantallaSecundaria(),
            settings: settings,
          );

        default:
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Center(
                child: Text("Página no encontrada"),
              ),
            ),
          );
      }
    },
  ),
);
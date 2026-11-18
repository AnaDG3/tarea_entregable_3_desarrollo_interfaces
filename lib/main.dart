import 'package:flutter/material.dart';

import 'Pantalla_Principal.dart';
import 'Pantalla_Secundaria.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const PantallaPrincipal(),
      '/detalles': (context) => const PantallaSecundaria(),
    },
  ),
);

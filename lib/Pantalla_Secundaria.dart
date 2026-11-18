
import 'package:flutter/material.dart';

import 'datos_planetas.dart';

class PantallaSecundaria extends StatelessWidget {
  const PantallaSecundaria({super.key});

  @override
  Widget build(BuildContext context) {

    final Planeta planeta =
    ModalRoute.of(context)!.settings.arguments as Planeta;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detalles Planeta",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black45,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Column(
        children: [
          Image.asset(planeta.imagenUrl),
        ],
      ),
    );
  }
}
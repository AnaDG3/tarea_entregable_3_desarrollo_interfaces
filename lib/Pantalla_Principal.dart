import 'package:flutter/material.dart';

import 'datos_planetas.dart';
import 'Datos_Entrada.dart';
import 'Elemento_Planeta.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  // Recuperamos la lista de planetas
  static final List<Planeta> planetas =
  DatosEntrada.obtenerPlanetas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ElementoPlaneta(
                planeta: planetas[i],
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
    );
  }
}

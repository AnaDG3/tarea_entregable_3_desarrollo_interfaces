import 'package:flutter/material.dart';

import 'datos_planetas.dart';
import 'Pantalla_Secundaria.dart';

class ElementoPlaneta extends StatelessWidget {
  final Planeta planeta;

  const ElementoPlaneta({
    super.key,
    required this.planeta,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(planeta.nombre),
      subtitle: Text(planeta.distancia_sol),
      leading: Image.asset(
        planeta.imagenUrl,
        fit: BoxFit.cover,
        width: 60,
      ),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PantallaSecundaria(planeta: planeta),
          ),
        );
      },
    );
  }
}
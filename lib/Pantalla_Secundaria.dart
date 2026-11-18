import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'datos_planetas.dart';

class PantallaSecundaria extends StatelessWidget {
final Planeta planeta;
  const PantallaSecundaria({
    super.key,
    required this.planeta,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true, title: Text(planeta.nombre, style: TextStyle(color: Colors.white),), backgroundColor: Colors.black12, iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)
            ),
          ],
        ),
        body: Column(

        )
    );
  }
}
import 'package:flutter/material.dart';
import 'informacion.dart';
import 'configuracion.dart';

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio de tu aplicacion jeje')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/segunda");
              },
              child: Text("Ir a la informacion de la aplicacion >-<"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/tercera");
              },
              child: Text("Ir a configuracion ya sabes"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Informacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informacion sobre esta pagina")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Regresar a la primera pantalla"),
        ),
      ),
    );
  }
}

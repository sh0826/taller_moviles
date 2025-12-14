import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MostrarOcultarContrasena());
  }
}

class MostrarOcultarContrasena extends StatefulWidget {
  @override
  _MostrarOcultarContrasenaState createState() =>
      _MostrarOcultarContrasenaState();
}

class _MostrarOcultarContrasenaState extends State<MostrarOcultarContrasena> {
  bool ocultar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mostrar/Ocultar contraseña")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: ocultar,
              decoration: InputDecoration(
                labelText: "Contraseña",
                suffixIcon: IconButton(
                  icon: Icon(ocultar ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      ocultar = !ocultar;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

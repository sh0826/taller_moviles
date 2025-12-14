import 'package:flutter/material.dart';

class MiWidgetStatefulState extends StatefulWidget {
  @override
  _MiWidgetStatefulState createState() => _MiWidgetStatefulState();
}

class _MiWidgetStatefulState extends State<MiWidgetStatefulState> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void disminuir() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agregar y disminuir numeros de uno en uno")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador: " + contador.toString(),
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(onPressed: incrementar, child: Text("Incrementar")),
            ElevatedButton(onPressed: disminuir, child: Text("Desminuir")),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MiWidgetStatefulState()));
}

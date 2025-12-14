import 'package:flutter/material.dart';

class ListaConStatelessW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lista de elementos utilizando StatelessWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Nombre: Sharon jiji"),
            Text("Edad: 18"),
            Text("FLutter 3 estudiando jaaaaa"),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ListaConStatelessW()));
}

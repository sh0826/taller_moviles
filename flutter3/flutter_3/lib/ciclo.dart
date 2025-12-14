import 'package:flutter/material.dart';

class CicloDeVidaState extends StatefulWidget {
  @override
  _CicloDeVidaState createState() => _CicloDeVidaState();
}

class _CicloDeVidaState extends State<CicloDeVidaState> {
  @override
  void initState() {
    super.initState();
    print("initState: Widget creado");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencias cambiaron");
  }

  @override
  Widget build(BuildContext context) {
    print("Build widget se esta dibujando");
    return Scaffold(
      appBar: AppBar(title: Text("Ciclo de vida del señor StatefulWidget")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {});
          },
          child: Text("Redibujar widget"),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CicloDeVidaState oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Widget actualizado");
  }

  @override
  void deactivate() {
    print("Widget desactivado");
    super.deactivate();
  }

  @override
  void dispose() {
    print("Widget eliminado");
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(home: CicloDeVidaState()));
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Tarea {
  String titulo;
  bool completada;
  Tarea(this.titulo, this.completada);
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Lista de tareas señor")),
        body: ListaTareas(),
      ),
    );
  }
}

class ListaTareas extends StatefulWidget {
  @override
  _ListaTareasState createState() => _ListaTareasState();
}

class _ListaTareasState extends State<ListaTareas> {
  List<Tarea> tareas = [
    Tarea("Estudiar java jaja", true),
    Tarea("Estudiar ahora flutter", false),
    Tarea("Que nos paguen rapido", false),
  ];

  void toggleCompletada(int index) {
    setState(() {
      tareas[index].completada = !tareas[index].completada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tareas.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(tareas[index].titulo),
          value: tareas[index].completada,
          onChanged: (bool? value) {
            toggleCompletada(index);
          },
        );
      },
    );
  }
}

import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';


void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perfil de Sharon'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
            Center(
            child: perfil(
              size: 150.0,
            ),
            ),
            const SizedBox(height: 10),
            Text(
              "Sharon Hernández",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),     
      Row(
      mainAxisAlignment: MainAxisAlignment.center, 
  children: [
    Icon(
      Icons.facebook,
      color: Colors.blue,
      size: 40,
    ),
    const SizedBox(width: 20),
    Icon(
      Icons.email,
      color: Colors.red,
      size: 40,
    ),
  ],
),
Column(
  children: [
    Text(
      "- Estudiante de ADSON del SENA",
      style: TextStyle(fontSize: 16.0, color: const Color.fromARGB(255, 123, 28, 139)),
    ),
    Text(
      "- Le gustan los gatos y la comida",
      style: TextStyle(fontSize: 16.0, color: const Color.fromARGB(255, 123, 28, 139)),
    ),
  ],
),
Expanded(
 child: GridView.count(
  padding: EdgeInsets.all(30),
  crossAxisCount: 2,
  crossAxisSpacing: 45,
  mainAxisSpacing: 45,
 children: [
  Image.asset('assets/foto2.png', fit: BoxFit.cover),
  Image.asset('assets/foto3.png', fit: BoxFit.cover),
  Image.asset('assets/foto4.png', fit: BoxFit.cover),
  Image.asset('assets/foto5.png', fit: BoxFit.cover),
 ],
),
),
Expanded(
  child:
Stack(
  children: [
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/fondo.png'),fit: BoxFit.cover,
      ),
      ),
    ),
    Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
        'Gracias por visitar mi perfil',
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    ),
  ],
),
),

          ],
          ),
        ),
    );
   
  }
  Widget perfil({required double size}){
    return Container(
      width: size,
      height: size,
      color: Colors.pink.shade100,
      child: ClipOval(
        child: Image.asset(
          'assets/foto.png',            
          width: size,
          height: size,
        ),
      ),
    );
   
  }
   
  }






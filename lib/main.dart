import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Abril Cisneros 1162'),
        ),
        body: Center(
          child: AttributeContainer(
            nombre: 'Abril Cisneros',
            id: '1162',
            edad: 17,
          ),
        ),
      ),
    );
  }
}

class AttributeContainer extends StatelessWidget {
  final String nombre;
  final String id;
  final int edad;

  AttributeContainer({
    required this.nombre,
    required this.id,
    required this.edad,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.purple, // Color morado
        borderRadius: BorderRadius.circular(10), // Bordes redondeados
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Sombra
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // Desplazamiento de la sombra
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nombre: $nombre',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          SizedBox(height: 10),
          Text('ID: $id', style: TextStyle(color: Colors.white, fontSize: 18)),
          SizedBox(height: 10),
          Text('Edad: $edad',
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Usuario {
  final int id;
  final String nombre;
  final String apellidos;

  Usuario({required this.id, required this.nombre, required this.apellidos});
}

class MyApp extends StatelessWidget {
  final List<Usuario> usuarios = [
    Usuario(id: 1, nombre: "Juan", apellidos: "Pérez López"),
    Usuario(id: 2, nombre: "María", apellidos: "Gómez Rodríguez"),
    Usuario(id: 3, nombre: "Carlos", apellidos: "Fernández Ruiz"),
    Usuario(id: 4, nombre: "Ana", apellidos: "Martínez Herrera"),
    Usuario(id: 5, nombre: "Pedro", apellidos: "Sánchez Morales"),
  ];

  final List<Color> containerColors = [
    Colors.blue.shade200,
    Colors.green.shade200,
    Colors.orange.shade200,
    Colors.purple.shade200,
    Colors.red.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container-Victor Aleman 1123"),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: const Color(0xffff02da),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(usuarios.length, (index) {
              return Column(
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: containerColors[index],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(2, 4),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ID: ${usuarios[index].id}",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Nombre: ${usuarios[index].nombre}",
                            style: TextStyle(fontSize: 16)),
                        Text("Apellidos: ${usuarios[index].apellidos}",
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

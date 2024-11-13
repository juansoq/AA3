import 'package:flutter/material.dart';
//import 'package:flutter_application_1/widgets/MyIcon.dart';
//import 'package:flutter_application_1/main.dart';
//import 'package:flutter_application_1/widgets/MyIcon.dart';
import 'package:flutter_application_1/widgets/MyImage.dart';
import 'package:flutter_application_1/widgets/Mybar.dart';

///import 'package:flutter_application_1/widgets/MyRichText.dart';
//import 'package:flutter_application_1/widgets/MyIcon.dart';
//import 'package:flutter_application_1/widgets/MyText.dart';

// import 'package:proyectoaa1/widgets/MyImage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Mybar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Dirección del gradiente
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4682B4), // Color inicial
              Color(0xFF757575), // Color final
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Myimage(),
                SizedBox(height: 20),
                // Botón 1 con un tamaño ajustado
                Container(
                  width: 1000, // Ancho del botón
                  child: ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 120),
                        backgroundColor: Colors.blue, // Altura del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // Color del fondo del botón
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Alineación a la izquierda
                        children: [
                          // Imagen de perfil
                          CircleAvatar(
                            radius: 50, // Tamaño de la imagen de perfil
                            backgroundImage: AssetImage(
                                "assets/images/raulmenendes2.jpg"), // Ruta de la imagen
                          ),
                          SizedBox(
                              width: 300), // Espacio entre la imagen y el texto
                          // Column que contiene el título y el resumen
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Título
                              Text(
                                'Perfil y configuración',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                  height:
                                      5), // Espacio entre el título y el resumen
                              // Resumen
                              Text(
                                'Gestiona tu perfil y ajustes',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 20),
                // Botón 2 con un tamaño ajustado
                Container(
                  width: 1000, // Ancho del botón
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción cuando se presiona el botón
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 120),
                      backgroundColor: Colors.blue, // Altura del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ), // Color del fondo del botón
                    ),
                    child: const Text(
                      'Ver Ordenes',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

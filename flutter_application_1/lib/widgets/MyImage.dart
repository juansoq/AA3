import 'package:flutter/widgets.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildImage("assets/images/perro.jpg"),
        const SizedBox(width: 20),
        buildImage("assets/images/aurolea.jpg"),
      ],
    );
  }

  Widget buildImage(String imagePath) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(25), // Define el radio de las esquinas
      child: Image(
        image: AssetImage(
            imagePath), // Aquí pasa la variable imagePath sin comillas
        height: 500,
        width: 510,
        fit: BoxFit.cover,
      ),
    );
  }
}

//Forma locla poner las imagenes 
    // return Image(
    //   image:const AssetImage("assets/images/forza 5.jpg"),
    //   height: 720,
    //   width: 510,
    //   fit: BoxFit.cover,
    //   errorBuilder: (context, error, stackTrace) =>
    //       const Text("Error al cargar la imagen"),
    // );

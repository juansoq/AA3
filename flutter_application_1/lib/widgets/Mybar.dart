import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/perfil.dart';

class Mybar extends StatelessWidget implements PreferredSizeWidget {
  const Mybar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Menu Principal",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.black, // Cambia el color si lo necesitas
        onPressed: () {},
      ),
      actions: [
        StatefulBuilder(
          builder: (context, setState) {
            bool isTapped = false; // Estado que controla el tamaño al pulsar

            return GestureDetector(
              onTapDown: (_) {
                setState(() => isTapped = true); // Activa el cambio de escala
              },
              onTapUp: (_) {
                setState(() => isTapped = false); // Restablece el tamaño
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Perfil()),
                );
              },
              child: AnimatedScale(
                // ignore: dead_code
                scale: isTapped ? 1.2 : 1.0, // Cambia el tamaño al pulsar
                duration: const Duration(
                    milliseconds: 200), // Duración de la animación
                child: const CircleAvatar(
                  radius: 30, // Tamaño de la imagen de perfil
                  backgroundImage:
                      AssetImage("assets/images/raulmenendes2.jpg"),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Bienvenido ",
      style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 5,
          wordSpacing: 10,
          backgroundColor: Color.fromARGB(255, 28, 164, 202),
          fontFamily: "Open Sans"),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

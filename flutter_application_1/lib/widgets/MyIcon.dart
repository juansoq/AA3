import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Myicon extends StatelessWidget {
  const Myicon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.car_rental,
      color: Color.fromARGB(255, 37, 37, 37),
      size: 120,
    );
  }
}

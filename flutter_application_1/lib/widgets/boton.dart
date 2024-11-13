import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Boton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}

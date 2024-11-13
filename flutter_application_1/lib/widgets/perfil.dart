import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text("Perfil en proceso",
            style: TextStyle(
              fontSize: 50,
              color: Colors.purple,
            )),
      ),
    );
  }
}

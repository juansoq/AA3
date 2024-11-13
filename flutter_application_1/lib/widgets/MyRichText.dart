import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Myrichtext extends StatelessWidget {
  const Myrichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: "Do you have account?",
        style: TextStyle(
          color: Color.fromARGB(255, 32, 33, 33),
          fontWeight: FontWeight.bold,
        ),
        children: [
          WidgetSpan(
              child: SizedBox(
            width: 30,
          )),
          TextSpan(
            text: "join",
            style: TextStyle(
              color: Color.fromARGB(255, 226, 238, 238),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Richtext extends StatelessWidget {
  const Richtext({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            children: <TextSpan>[
          TextSpan(text: "Hello"),
          TextSpan(
            text: " World",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          TextSpan(
            text: " Wellcome to Flutter ",
            style: TextStyle(color: Colors.red),
          ),
        ]));
  }
}

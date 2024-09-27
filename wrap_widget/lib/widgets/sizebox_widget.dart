import 'package:flutter/material.dart';

class SizeboxWidget extends StatelessWidget {
  const SizeboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
            // maxHeight: 40,
            // maxWidth: 300,

            // shrinkWidth
            // minHeight: 40,
            // minWidth: 300,
            ),
        child: SizedBox.square(
          dimension: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: () {
              print(' Button Clicked!');
            },
            child: Text(
              "Clicked!",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

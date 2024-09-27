import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? color;
  final VoidCallback? callback;
  final TextStyle? textStyle;
  const RoundedButton(
      {super.key,
      required this.btnName,
      this.icon,
      this.color = Colors.blue,
      this.callback,
      this.textStyle,
      S});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          elevation: 10,
          backgroundColor: color,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21), topRight: Radius.circular(21)),
          )),
    );
  }
}

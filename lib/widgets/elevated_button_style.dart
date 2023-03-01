import 'package:flutter/material.dart';

class ElevatedButtonStyle extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? textColor;
  final double padding;
  final double? size;
  final void Function()? callback;
  final FontWeight? weight;
  const ElevatedButtonStyle(
      {this.color,
      required this.padding,
      this.textColor,
      this.text,
      this.callback,
      this.size,
      this.weight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(padding),
        backgroundColor: color,
      ),
      child: Text(
        "$text",
        style: TextStyle(color: textColor, fontSize: size, fontWeight: weight),
      ),
    );
  }
}

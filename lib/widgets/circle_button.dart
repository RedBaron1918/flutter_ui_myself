import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback press;

  const CircleButton(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      margin: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(color: Colors.grey[900], shape: BoxShape.circle),
      child: Center(
        child: IconButton(
          onPressed: press,
          icon: Icon(icon),
          iconSize: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}

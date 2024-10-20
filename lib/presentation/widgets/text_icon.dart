import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const TextIcon({
    super.key,
    required this.icon,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

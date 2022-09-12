import 'dart:ui';

import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  double size;

  final String text;

  final Color color;

  LargeText({required this.text, this.size = 30, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class smallText extends StatelessWidget {
  double size;

  final String text;

  final Color color;

  smallText({required this.text, this.size = 16, this.color = Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

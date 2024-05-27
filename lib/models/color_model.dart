import 'package:flutter/material.dart';

class ColorModel {
  const ColorModel(
      {required this.svgPath, required this.gradient, required this.color});

  final String svgPath;
  final Gradient gradient;
  final Color color;
}

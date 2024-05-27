import 'package:flutter/material.dart';

class Project {
  final String title;
  final String image;
  final List<String> bulletPoints;
  final Color color;
  Project({
    required this.color,
    required this.title,
    required this.image,
    required this.bulletPoints,
  });
}

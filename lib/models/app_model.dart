import 'package:flutter/material.dart';

class AppModel {
  const AppModel(
      {required this.title,
      this.assetPath,
      this.icon,
      required this.color,
      this.screen,
      this.link});
  final String title;
  final String? assetPath;
  final IconData? icon;
  final Color color;
  final Widget? screen;
  final String? link;
}

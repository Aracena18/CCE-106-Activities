import 'package:flutter/material.dart';

class ActivityItem {
  const ActivityItem({
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
    required this.builder,
  });

  final int number;
  final String title;
  final String description;
  final IconData icon;
  final WidgetBuilder builder;
}

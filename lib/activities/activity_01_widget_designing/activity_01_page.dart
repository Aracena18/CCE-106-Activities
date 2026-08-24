import 'package:flutter/material.dart';

import 'dynamic_page.dart';
import 'icon_page.dart';

class Activity01Page extends StatelessWidget {
  const Activity01Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Activity 01')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Flutter Widget Designing',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          const Text(
            'This module preserves the exercises from the previous activity while keeping them inside the consolidated CCE-106 application.',
          ),
          const SizedBox(height: 24),
          _ExerciseCard(
            icon: Icons.dashboard_customize_outlined,
            title: 'Dynamic Widget Exercise',
            description:
                'TextStyle reuse, Column/Row composition, a reusable buildNewRow() function, and an asset image.',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const DynamicPage()),
            ),
          ),
          const SizedBox(height: 14),
          _ExerciseCard(
            icon: Icons.star_outline,
            title: 'Final Icon & Recipe Exercise',
            description:
                'Dynamic star rating, review count, reusable icon tabs, Pavlova content, and ListView.',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const IconPage()),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExerciseCard extends StatelessWidget {
  const _ExerciseCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(child: Icon(icon)),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(description),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}

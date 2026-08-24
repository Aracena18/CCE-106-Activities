import 'package:flutter/material.dart';

import '../../activities/activity_01_widget_designing/activity_01_page.dart';
import '../../models/activity_item.dart';

class ActivityHubPage extends StatelessWidget {
  const ActivityHubPage({super.key});

  List<ActivityItem> _activities(BuildContext context) => [
        ActivityItem(
          number: 1,
          title: 'Flutter Widget Designing',
          description:
              'Dynamic widgets, reusable functions, icons, loops, images, and ListView.',
          icon: Icons.widgets_outlined,
          builder: (_) => const Activity01Page(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final activities = _activities(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CCE-106 Activity Hub'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'My Activities',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'All CCE-106 activities will be collected in this single Flutter application.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 24),
            ...activities.map(
              (activity) => Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: activity.builder),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            child: Icon(activity.icon),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Activity ${activity.number.toString().padLeft(2, '0')}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  activity.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(activity.description),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card.outlined(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    const Icon(Icons.add_circle_outline),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        'Future activities will be added here without creating a separate Flutter project.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

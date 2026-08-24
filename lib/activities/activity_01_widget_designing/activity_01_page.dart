import 'package:flutter/material.dart';

import 'dynamic_page.dart';
import 'icon_page.dart';

class Activity01Page extends StatelessWidget {
  const Activity01Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DynamicPage(),
                  ),
                );
              },
              child: const Text('Dynamic Widget'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IconPage(),
                  ),
                );
              },
              child: const Text('Icon Widget'),
            ),
          ],
        ),
      ),
    );
  }
}

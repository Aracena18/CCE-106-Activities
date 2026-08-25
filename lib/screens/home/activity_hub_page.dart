import 'package:flutter/material.dart';

import '../../activities/activity_01_widget_designing/icon_page.dart';
import '../../activities/activity_02_alignment/activity_02_page.dart';
import '../../activities/activity_03_login_register/login.dart';
import '../../activities/activity_04_edgeinsets/activity_04_page.dart';

class ActivityHubPage extends StatelessWidget {
  const ActivityHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CCE-106 Activities'),
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
                    builder: (context) => const IconPage(),
                  ),
                );
              },
              child: const Text('Task 1 - PAVLOVA'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Activity04Page(),
                  ),
                );
              },
              child: const Text('Task 2 - EdgeInsets'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Activity02Page(),
                  ),
                );
              },
              child: const Text('Task 3 - Main_Cross_Alignment'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Task 4 - LoginRegister'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../activities/activity_01_widget_designing/icon_page.dart';
import '../../activities/activity_02_alignment/activity_02_page.dart';
import '../../activities/activity_03_login_register/login.dart';
import '../../activities/activity_04_edgeinsets/activity_04_page.dart';
import '../../activities/activity_05_calculator/calculator.dart';
import '../../activities/activity_06_social_media/auth/login.dart';
import '../../activities/activity_10_firebase_crud/home_page.dart' as task10;
import '../../activities/stateless_labexam_Aracena/student_dashboard.dart';

class ActivityHubPage extends StatelessWidget {
  const ActivityHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CCE-106 Activities'),
      ),
      body: SingleChildScrollView(
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Calculator(),
                  ),
                );
              },
              child: const Text('Task 5 - Calculator'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Task6LoginPage(),
                  ),
                );
              },
              child: const Text('Task 6 - Social Media Clone'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const task10.HomePage(),
                  ),
                );
              },
              child: const Text('Task 10 - Firebase CRUD'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentDashboard(),
                  ),
                );
              },
              child: const Text('Stateless_labexam_Aracena'),
            ),
          ],
        ),
      ),
    );
  }
}

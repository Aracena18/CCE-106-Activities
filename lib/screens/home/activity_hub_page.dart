import 'package:flutter/material.dart';

import '../../activities/activity_08_firebase_cloudinary/home_page.dart';

class ActivityHubPage extends StatelessWidget {
  const ActivityHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Cloudinary - ARACENA'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Task8AuthGate(),
              ),
            );
          },
          child: const Text('Firebase Cloudinary'),
        ),
      ),
    );
  }
}

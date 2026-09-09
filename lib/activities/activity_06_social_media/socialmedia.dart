import 'package:flutter/material.dart';

import 'model/userdata.dart';
import 'view/feed.dart';
import 'view/friendlist.dart';
import 'view/mainscreen.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  final UserData userData = UserData();

  void openFeed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FeedPage(userData: userData),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK 6 ARACENA'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          MainScreen(userData: userData),
          const Divider(height: 1),
          FriendList(userData: userData),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
            child: ElevatedButton(
              onPressed: openFeed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('View Posts'),
            ),
          ),
        ],
      ),
    );
  }
}

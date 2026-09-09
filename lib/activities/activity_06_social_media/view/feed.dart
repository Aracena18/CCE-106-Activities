import 'package:flutter/material.dart';

import '../model/userdata.dart';
import 'postlist.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    super.key,
    required this.userData,
  });

  final UserData userData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK 6 ARACENA'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          PostList(userData: userData),
        ],
      ),
    );
  }
}

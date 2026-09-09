import 'package:flutter/material.dart';

import '../model/userdata.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userData});

  final UserData userData;

  @override
  Widget build(BuildContext context) {
    final account = userData.myUserAccount;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 42,
            child: Icon(Icons.person, size: 48),
          ),
          const SizedBox(height: 10),
          Text(
            account.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(account.email),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _count(account.numFollowers, 'Followers'),
              _count(account.numFollowing, 'Following'),
              _count(account.numPosts, 'Posts'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _count(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }
}

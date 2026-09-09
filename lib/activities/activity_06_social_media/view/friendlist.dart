import 'package:flutter/material.dart';

import '../model/friend.dart';
import '../model/userdata.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key, required this.userData});

  final UserData userData;

  Widget friendCard(Friend friend) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 28,
            child: Icon(Icons.person, size: 30),
          ),
          const SizedBox(height: 8),
          Text(friend.name),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Friends',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('${userData.friendList.length} Friends'),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 120,
            ),
            itemCount: userData.friendList.length,
            itemBuilder: (context, index) {
              return friendCard(userData.friendList[index]);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/friend.dart';
import '../model/userdata.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key, required this.userData});

  final UserData userData;

  Widget friendCard(Friend friend) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              friend.image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.person, size: 42),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          friend.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Friends',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            '${userData.friendList.length} Friends',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 130,
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

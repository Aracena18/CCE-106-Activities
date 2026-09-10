import 'package:flutter/material.dart';

import '../model/userdata.dart';

class InfoHeader extends StatelessWidget {
  const InfoHeader({super.key, required this.userData});

  final UserData userData;

  Widget infoItem(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final account = userData.myUserAccount;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          infoItem('Followers', account.numFollowers),
          infoItem('Following', account.numFollowing),
          infoItem('Posts', account.numPosts),
        ],
      ),
    );
  }
}

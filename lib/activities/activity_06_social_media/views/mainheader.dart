import 'package:flutter/material.dart';

import '../model/userdata.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key, required this.userData});

  final UserData userData;

  @override
  Widget build(BuildContext context) {
    final account = userData.myUserAccount;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              account.image,
              width: 82,
              height: 82,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 82,
                  height: 82,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.person, size: 48),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            account.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            account.email,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

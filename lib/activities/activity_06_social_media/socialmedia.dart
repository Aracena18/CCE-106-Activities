import 'package:flutter/material.dart';

import 'model/userdata.dart';
import 'views/friendlist.dart';
import 'views/infoheader.dart';
import 'views/mainheader.dart';
import 'views/postlist.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  final UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK 6 ARACENA'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          MainHeader(userData: userData),
          InfoHeader(userData: userData),
          const Divider(height: 1),
          FriendList(userData: userData),
          const Divider(height: 1),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 14, 16, 6),
            child: Text(
              'Posts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PostList(userData: userData),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

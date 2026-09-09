import 'package:flutter/material.dart';

import '../model/userdata.dart';
import '../model/userpost.dart';
import 'postdetail.dart';

class PostList extends StatefulWidget {
  const PostList({super.key, required this.userData});

  final UserData userData;

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  Future<void> openPost(UserPost post, {bool focusComment = false}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostDetail(
          post: post,
          focusComment: focusComment,
        ),
      ),
    );

    if (mounted) {
      setState(() {});
    }
  }

  Widget postImage(UserPost post, int index) {
    Widget image;

    if (post.postImage.isEmpty) {
      image = Container(
        height: 250,
        color: Colors.grey.shade300,
        child: const Center(
          child: Icon(Icons.image, size: 70, color: Colors.grey),
        ),
      );
    } else {
      image = Image.network(
        post.postImage,
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 250,
            color: Colors.grey.shade300,
            child: const Center(
              child: Icon(Icons.broken_image, size: 70, color: Colors.grey),
            ),
          );
        },
      );
    }

    return InkWell(
      key: Key('post-image-$index'),
      onTap: () => openPost(post),
      child: image,
    );
  }

  Widget showPost(UserPost post, int index) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 6, 10, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.username,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post.time,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
            child: Text(post.postContent),
          ),
          postImage(post, index),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${post.numComments} Comments'),
                Text('${post.numShare} Shares'),
              ],
            ),
          ),
          const Divider(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    post.isLiked = !post.isLiked;
                  });
                },
                icon: Icon(
                  Icons.thumb_up,
                  color: post.isLiked ? Colors.blue : Colors.grey,
                ),
                label: Text(
                  'Like',
                  style: TextStyle(
                    color: post.isLiked ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () => openPost(post, focusComment: true),
                icon: const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                label: const Text(
                  'Comment',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share, color: Colors.grey),
                label: const Text(
                  'Share',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.userData.userList.length,
      itemBuilder: (context, index) {
        return showPost(widget.userData.userList[index], index);
      },
    );
  }
}

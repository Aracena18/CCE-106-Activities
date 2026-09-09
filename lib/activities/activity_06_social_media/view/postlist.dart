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

  Widget avatar(String image, {double radius = 20}) {
    return ClipOval(
      child: Image.network(
        image,
        width: radius * 2,
        height: radius * 2,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: radius * 2,
            height: radius * 2,
            color: Colors.grey.shade300,
            child: const Icon(Icons.person),
          );
        },
      ),
    );
  }

  Widget postImage(UserPost post, int index) {
    Widget image;

    if (post.postImage.isEmpty) {
      image = Container(
        height: 260,
        color: Colors.grey.shade300,
        child: const Center(
          child: Icon(Icons.image, size: 70, color: Colors.grey),
        ),
      );
    } else {
      image = Image.network(
        post.postImage,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 260,
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
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: Row(
              children: [
                avatar(post.userImage),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${post.numComments} Comments',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(width: 14),
                Text(
                  '${post.numShare} Shares',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
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
                  Icons.thumb_up_alt_outlined,
                  size: 18,
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
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  size: 18,
                  color: Colors.grey,
                ),
                label: const Text(
                  'Comment',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share, size: 18, color: Colors.grey),
                label: const Text(
                  'Share',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          if (post.comments.isNotEmpty) ...[
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  avatar(post.comments.first.commenterImage, radius: 17),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.comments.first.commenterName,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          post.comments.first.commentContent,
                          style: const TextStyle(fontSize: 13),
                        ),
                        Text(
                          post.comments.first.commentTime,
                          style: const TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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

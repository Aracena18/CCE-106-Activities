import 'package:flutter/material.dart';

import '../model/usercomment.dart';
import '../model/userpost.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({
    super.key,
    required this.post,
    this.focusComment = false,
  });

  final UserPost post;
  final bool focusComment;

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  final TextEditingController commentController = TextEditingController();
  final FocusNode commentFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.focusComment) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        commentFocusNode.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    commentController.dispose();
    commentFocusNode.dispose();
    super.dispose();
  }

  void addComment() {
    final comment = commentController.text.trim();
    if (comment.isEmpty) {
      return;
    }

    setState(() {
      widget.post.comments.add(
        UserComment(
          commenterName: 'Robert Aracena',
          commenterImage: 'https://randomuser.me/api/portraits/men/32.jpg',
          commentTime: 'Just now',
          commentContent: comment,
        ),
      );
      commentController.clear();
    });
  }

  void toggleLike() {
    setState(() {
      widget.post.isLiked = !widget.post.isLiked;
    });
  }

  Widget avatar(String image, {double radius = 18}) {
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
            child: const Icon(Icons.person, size: 20),
          );
        },
      ),
    );
  }

  Widget postImage() {
    if (widget.post.postImage.isEmpty) {
      return Container(
        height: 280,
        color: Colors.grey.shade300,
        child: const Center(
          child: Icon(Icons.image, size: 70, color: Colors.grey),
        ),
      );
    }

    return Image.network(
      widget.post.postImage,
      width: double.infinity,
      height: 320,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: 280,
          color: Colors.grey.shade300,
          child: const Center(
            child: Icon(Icons.broken_image, size: 70, color: Colors.grey),
          ),
        );
      },
    );
  }

  Widget commentTile(UserComment comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          avatar(comment.commenterImage),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.commenterName,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(comment.commentContent),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      comment.commentTime,
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Like',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Reply',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                avatar(widget.post.userImage, radius: 20),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.post.username,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.post.time,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
            child: Text(widget.post.postContent),
          ),
          postImage(),
          const Divider(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: toggleLike,
                icon: Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 18,
                  color: widget.post.isLiked ? Colors.blue : Colors.grey,
                ),
                label: Text(
                  'Like',
                  style: TextStyle(
                    color: widget.post.isLiked ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () => commentFocusNode.requestFocus(),
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
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: Text(
              widget.post.numComments,
              style: const TextStyle(fontSize: 13),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 6, 16, 4),
            child: Text(
              'All Comments',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ...widget.post.comments.map(commentTile),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                avatar(
                  'https://randomuser.me/api/portraits/men/32.jpg',
                  radius: 17,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    key: const Key('comment-field'),
                    controller: commentController,
                    focusNode: commentFocusNode,
                    decoration: const InputDecoration(
                      hintText: 'Write a comment...',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => addComment(),
                  ),
                ),
                IconButton(
                  key: const Key('post-comment-button'),
                  onPressed: addComment,
                  icon: const Icon(Icons.send, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

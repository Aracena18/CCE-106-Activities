import 'usercomment.dart';

class UserPost {
  final String username;
  final String time;
  final String postContent;
  final String postImage;
  final String numShare;
  bool isLiked;
  final List<UserComment> comments;

  UserPost({
    required this.username,
    required this.time,
    required this.postContent,
    required this.postImage,
    required this.numShare,
    required this.isLiked,
    required this.comments,
  });

  String get numComments => comments.length.toString();
}

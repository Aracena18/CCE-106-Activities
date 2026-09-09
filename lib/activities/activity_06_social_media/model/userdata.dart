import 'account.dart';
import 'friend.dart';
import 'usercomment.dart';
import 'userpost.dart';

class UserData {
  final Account myUserAccount = Account(
    name: 'Robert Jhon Aracena',
    email: 'robert.aracena@example.com',
    numFollowers: '1M',
    numPosts: '350',
    numFollowing: '500',
    numFriends: '400',
  );

  final List<Friend> friendList = [
    Friend(name: 'Alice'),
    Friend(name: 'Bob'),
    Friend(name: 'Charlie'),
    Friend(name: 'Diana'),
    Friend(name: 'Ethan'),
    Friend(name: 'Fiona'),
  ];

  final List<UserPost> userList = [
    UserPost(
      username: 'John Doe',
      time: '2 hrs ago',
      postContent: 'Had a great day at the beach!',
      postImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/960px-Pavlova_dessert.JPG',
      numShare: '5',
      isLiked: false,
      comments: [
        UserComment(
          commenterName: 'Jane Smith',
          commentTime: '1 hr ago',
          commentContent: 'Looks fun!',
        ),
        UserComment(
          commenterName: 'Mike Johnson',
          commentTime: '30 mins ago',
          commentContent: 'Wish I was there!',
        ),
      ],
    ),
    UserPost(
      username: 'Jane Smith',
      time: '3 hrs ago',
      postContent: 'Loving the new cafe in town.',
      postImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/960px-Pavlova_dessert.JPG',
      numShare: '3',
      isLiked: true,
      comments: [
        UserComment(
          commenterName: 'Emily Davis',
          commentTime: '15 mins ago',
          commentContent: 'Great photo!',
        ),
      ],
    ),
    UserPost(
      username: 'Mike Johnson',
      time: '5 hrs ago',
      postContent: 'Just finished a 10k run!',
      postImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/960px-Pavlova_dessert.JPG',
      numShare: '7',
      isLiked: false,
      comments: [],
    ),
  ];
}

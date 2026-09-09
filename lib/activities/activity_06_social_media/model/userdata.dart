import 'account.dart';
import 'friend.dart';
import 'usercomment.dart';
import 'userpost.dart';

class UserData {
  final Account myUserAccount = Account(
    name: 'Robert Jhon Aracena',
    email: 'robert.aracena@example.com',
    image: 'https://randomuser.me/api/portraits/men/32.jpg',
    numFollowers: '1 Million',
    numPosts: '350',
    numFollowing: '500',
    numFriends: '6',
  );

  final List<Friend> friendList = [
    Friend(
      name: 'Alice',
      image: 'https://randomuser.me/api/portraits/women/44.jpg',
    ),
    Friend(
      name: 'Bob',
      image: 'https://randomuser.me/api/portraits/men/46.jpg',
    ),
    Friend(
      name: 'Charlie',
      image: 'https://randomuser.me/api/portraits/men/52.jpg',
    ),
    Friend(
      name: 'Diana',
      image: 'https://randomuser.me/api/portraits/women/65.jpg',
    ),
    Friend(
      name: 'Ethan',
      image: 'https://randomuser.me/api/portraits/men/75.jpg',
    ),
    Friend(
      name: 'Fiona',
      image: 'https://randomuser.me/api/portraits/women/68.jpg',
    ),
  ];

  final List<UserPost> userList = [
    UserPost(
      username: 'John Doe',
      userImage: 'https://randomuser.me/api/portraits/men/11.jpg',
      time: '2 hrs ago',
      postContent: 'Had a great day at the beach!',
      postImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/960px-Pavlova_dessert.JPG',
      numShare: '5',
      isLiked: false,
      comments: [
        UserComment(
          commenterName: 'Jane Smith',
          commenterImage: 'https://randomuser.me/api/portraits/women/32.jpg',
          commentTime: '1 hr ago',
          commentContent: 'Looks fun!',
        ),
        UserComment(
          commenterName: 'Mike Johnson',
          commenterImage: 'https://randomuser.me/api/portraits/men/41.jpg',
          commentTime: '30 mins ago',
          commentContent: 'Wish I was there!',
        ),
      ],
    ),
    UserPost(
      username: 'Jane Smith',
      userImage: 'https://randomuser.me/api/portraits/women/32.jpg',
      time: '3 hrs ago',
      postContent: 'Loving the new cafe in town.',
      postImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/960px-Pavlova_dessert.JPG',
      numShare: '3',
      isLiked: true,
      comments: [
        UserComment(
          commenterName: 'Emily Davis',
          commenterImage: 'https://randomuser.me/api/portraits/women/12.jpg',
          commentTime: '15 mins ago',
          commentContent: 'Great photo!',
        ),
      ],
    ),
  ];
}

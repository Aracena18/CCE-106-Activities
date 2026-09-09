import 'package:cce_106_activities/activities/activity_06_social_media/model/usercomment.dart';
import 'package:cce_106_activities/activities/activity_06_social_media/model/userpost.dart';
import 'package:cce_106_activities/activities/activity_06_social_media/view/postdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('post detail stays scrollable and can add a comment', (tester) async {
    final post = UserPost(
      username: 'John Doe',
      time: '2 hrs ago',
      postContent: 'Had a great day!',
      postImage: '',
      numShare: '5',
      isLiked: false,
      comments: [
        UserComment(
          commenterName: 'Jane Smith',
          commentTime: '1 hr ago',
          commentContent: 'Looks fun!',
        ),
      ],
    );

    await tester.pumpWidget(
      MaterialApp(
        home: PostDetail(post: post),
      ),
    );

    expect(find.byType(ListView), findsOneWidget);

    final commentField = find.byKey(const Key('comment-field'));
    await tester.ensureVisible(commentField);
    await tester.pump();

    await tester.enterText(commentField, 'My new comment');

    final postButton = find.byKey(const Key('post-comment-button'));
    await tester.ensureVisible(postButton);
    await tester.tap(postButton);
    await tester.pump();

    expect(find.text('My new comment'), findsOneWidget);
    expect(post.comments.length, 2);
  });
}

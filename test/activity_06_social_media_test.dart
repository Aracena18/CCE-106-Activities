import 'package:cce_106_activities/activities/activity_06_social_media/auth/login.dart';
import 'package:cce_106_activities/activities/activity_06_social_media/model/usercomment.dart';
import 'package:cce_106_activities/activities/activity_06_social_media/model/userpost.dart';
import 'package:cce_106_activities/activities/activity_06_social_media/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Task 6 login opens one scrollable profile and posts page', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Task6LoginPage(),
      ),
    );

    expect(find.text('TASK 6 ARACENA'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Register'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('task6-username')), 'robert');
    await tester.enterText(find.byKey(const Key('task6-password')), '1234');
    await tester.tap(find.byKey(const Key('task6-login-button')));
    await tester.pumpAndSettle();

    expect(find.text('Friends'), findsOneWidget);
    expect(find.text('6 Friends'), findsOneWidget);
    expect(find.text('View Posts'), findsNothing);
    expect(find.text('Posts'), findsOneWidget);

    await tester.drag(find.byType(ListView).first, const Offset(0, -700));
    await tester.pumpAndSettle();

    expect(find.text('Had a great day at the beach!'), findsOneWidget);
  });

  testWidgets('profile view stays scrollable and can add a comment', (tester) async {
    final post = UserPost(
      username: 'John Doe',
      userImage: '',
      time: '2 hrs ago',
      postContent: 'Had a great day!',
      postImage: '',
      numShare: '5',
      isLiked: false,
      comments: [
        UserComment(
          commenterName: 'Jane Smith',
          commenterImage: '',
          commentTime: '1 hr ago',
          commentContent: 'Looks fun!',
        ),
      ],
    );

    await tester.pumpWidget(
      MaterialApp(
        home: ProfileView(post: post),
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

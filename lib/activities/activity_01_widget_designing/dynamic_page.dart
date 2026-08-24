import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  const DynamicPage({super.key});

  final TextStyle txtdesign = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  Widget buildNewRow() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/activity_01/photo_male_1.jpg',
            width: 220,
            fit: BoxFit.cover,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a custom text',
              style: txtdesign,
            ),
            buildNewRow(),
          ],
        ),
      ),
    );
  }
}

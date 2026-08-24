import 'package:flutter/material.dart';

import 'screens/home/activity_hub_page.dart';

void main() {
  runApp(const Cce106App());
}

class Cce106App extends StatelessWidget {
  const Cce106App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CCE-106 Activities',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF7F8FC),
      ),
      home: const ActivityHubPage(),
    );
  }
}

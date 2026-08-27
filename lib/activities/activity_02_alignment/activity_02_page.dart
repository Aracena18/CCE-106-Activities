import 'package:flutter/material.dart';

class Activity02Page extends StatelessWidget {
  const Activity02Page({super.key});

  Widget buildExample(String title, Widget example) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(title),
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: example,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  List<Widget> rowChildren() {
    return [
      Container(width: 90, height: 90, color: Colors.red),
      Container(width: 80, height: 80, color: Colors.yellow),
      Container(width: 70, height: 70, color: Colors.blue),
    ];
  }

  List<Widget> columnChildren() {
    return [
      Container(width: 90, height: 90, color: Colors.red),
      Container(width: 80, height: 80, color: Colors.yellow),
      Container(width: 70, height: 70, color: Colors.blue),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('TASK 3 ARACENA'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          buildExample(
            'IN ROW MainAxisAlignment.center',
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW MainAxisAlignment.spaceAround',
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW MainAxisAlignment.spaceBetween',
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW MainAxisAlignment.spaceEvenly',
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW MainAxisAlignment.start',
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW MainAxisAlignment.end',
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.start',
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.end',
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.baseline',
            const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'BIG',
                    style: TextStyle(fontSize: 44),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Medium',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'small',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.center',
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.stretch',
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(width: 90, color: Colors.red),
                Container(width: 80, color: Colors.yellow),
                Container(width: 70, color: Colors.blue),
              ],
            ),
          ),
          buildExample(
            'IN COLUMN MainAxisAlignment.center',
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN MainAxisAlignment.spaceAround',
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN MainAxisAlignment.spaceBetween',
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN MainAxisAlignment.spaceEvenly',
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN MainAxisAlignment.start',
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN MainAxisAlignment.end',
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.start',
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.end',
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.baseline',
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'CrossAxisAlignment.baseline is not supported in Column',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.center',
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.stretch',
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(height: 90, color: Colors.red),
                Container(height: 80, color: Colors.yellow),
                Container(height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

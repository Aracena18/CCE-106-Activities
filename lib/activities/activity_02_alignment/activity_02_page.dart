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
      alignmentBox('Red Box', 90, 90, Colors.red),
      alignmentBox('Green Box', 80, 80, Colors.green),
      alignmentBox('Blue Box', 70, 70, Colors.blue),
    ];
  }

  List<Widget> columnChildren() {
    return [
      alignmentBox('Red Box', 90, 90, Colors.red),
      alignmentBox('Green Box', 80, 80, Colors.green),
      alignmentBox('Blue Box', 70, 70, Colors.blue),
    ];
  }

  Widget alignmentBox(String label, double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      color: color,
      child: Text(label, textAlign: TextAlign.center),
    );
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.end',
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  Text('BIG', style: TextStyle(fontSize: 44)),
                  SizedBox(width: 20),
                  Text('Medium', style: TextStyle(fontSize: 30)),
                  SizedBox(width: 20),
                  Text('small', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.center',
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: rowChildren(),
            ),
          ),
          buildExample(
            'IN ROW CrossAxisAlignment.stretch',
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                alignmentBox('Red Box', 90, double.infinity, Colors.red),
                alignmentBox('Green Box', 80, double.infinity, Colors.green),
                alignmentBox('Blue Box', 70, double.infinity, Colors.blue),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.end',
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.baseline',
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Flutter does not support CrossAxisAlignment.baseline directly in Column.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('BIG', style: TextStyle(fontSize: 44)),
                    SizedBox(width: 20),
                    Text('Medium', style: TextStyle(fontSize: 30)),
                    SizedBox(width: 20),
                    Text('small', style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Baseline is demonstrated using a Row inside the Column.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.center',
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: columnChildren(),
            ),
          ),
          buildExample(
            'IN COLUMN CrossAxisAlignment.stretch',
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                alignmentBox('Red Box', double.infinity, 90, Colors.red),
                alignmentBox('Green Box', double.infinity, 80, Colors.green),
                alignmentBox('Blue Box', double.infinity, 70, Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Activity02Page extends StatelessWidget {
  const Activity02Page({super.key});

  Widget buildExample(BuildContext context, String title, Widget example) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(title),
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
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
        title: const Text('TASK 1 LASTNAME'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildExample(
              context,
              'IN ROW MainAxisAlignment.center',
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW MainAxisAlignment.spaceAround',
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW MainAxisAlignment.spaceBetween',
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW MainAxisAlignment.spaceEvenly',
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW MainAxisAlignment.start',
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW MainAxisAlignment.end',
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW CrossAxisAlignment.start',
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW CrossAxisAlignment.end',
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
              'IN ROW CrossAxisAlignment.center',
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowChildren(),
              ),
            ),
            buildExample(
              context,
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
              context,
              'IN COLUMN MainAxisAlignment.center',
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN MainAxisAlignment.spaceAround',
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN MainAxisAlignment.spaceBetween',
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN MainAxisAlignment.spaceEvenly',
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN MainAxisAlignment.start',
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN MainAxisAlignment.end',
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN CrossAxisAlignment.center',
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN CrossAxisAlignment.start',
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
              'IN COLUMN CrossAxisAlignment.end',
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: columnChildren(),
              ),
            ),
            buildExample(
              context,
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
      ),
    );
  }
}

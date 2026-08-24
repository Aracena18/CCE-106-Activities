import 'package:flutter/material.dart';

class Activity02Page extends StatelessWidget {
  const Activity02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK 1 LASTNAME'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW MainAxisAlignment.center'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW MainAxisAlignment.center'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW MainAxisAlignment.spaceAround'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW MainAxisAlignment.spaceAround'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW MainAxisAlignment.spaceBetween'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW MainAxisAlignment.spaceBetween'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW MainAxisAlignment.spaceEvenly'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW MainAxisAlignment.spaceEvenly'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW MainAxisAlignment.start'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW MainAxisAlignment.start'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW MainAxisAlignment.end'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW MainAxisAlignment.end'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW CrossAxisAlignment.start'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW CrossAxisAlignment.start'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW CrossAxisAlignment.end'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW CrossAxisAlignment.end'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW CrossAxisAlignment.center'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW CrossAxisAlignment.center'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN ROW CrossAxisAlignment.stretch'),
                            const SizedBox(height: 10),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(width: 90, color: Colors.red),
                                  Container(width: 80, color: Colors.yellow),
                                  Container(width: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN ROW CrossAxisAlignment.stretch'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN MainAxisAlignment.center'),
                            const SizedBox(height: 10),
                            Container(
                              height: 520,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN MainAxisAlignment.center'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN MainAxisAlignment.spaceAround'),
                            const SizedBox(height: 10),
                            Container(
                              height: 520,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN MainAxisAlignment.spaceAround'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN MainAxisAlignment.spaceBetween'),
                            const SizedBox(height: 10),
                            Container(
                              height: 520,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN MainAxisAlignment.spaceBetween'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN MainAxisAlignment.spaceEvenly'),
                            const SizedBox(height: 10),
                            Container(
                              height: 520,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN MainAxisAlignment.spaceEvenly'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN MainAxisAlignment.start'),
                            const SizedBox(height: 10),
                            Container(
                              height: 520,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN MainAxisAlignment.start'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN MainAxisAlignment.end'),
                            const SizedBox(height: 10),
                            Container(
                              height: 520,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN MainAxisAlignment.end'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN CrossAxisAlignment.center'),
                            const SizedBox(height: 10),
                            Container(
                              height: 340,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN CrossAxisAlignment.center'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN CrossAxisAlignment.start'),
                            const SizedBox(height: 10),
                            Container(
                              height: 340,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN CrossAxisAlignment.start'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN CrossAxisAlignment.end'),
                            const SizedBox(height: 10),
                            Container(
                              height: 340,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(width: 90, height: 90, color: Colors.red),
                                  Container(width: 80, height: 80, color: Colors.yellow),
                                  Container(width: 70, height: 70, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN CrossAxisAlignment.end'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(title: const Text('TASK 1 LASTNAME')),
                      body: SingleChildScrollView(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text('IN COLUMN CrossAxisAlignment.stretch'),
                            const SizedBox(height: 10),
                            Container(
                              height: 340,
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Column(
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
                    ),
                  ),
                );
              },
              child: const Text('IN COLUMN CrossAxisAlignment.stretch'),
            ),
          ],
        ),
      ),
    );
  }
}

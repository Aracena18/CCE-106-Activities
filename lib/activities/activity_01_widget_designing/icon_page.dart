import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  static const String description =
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.';

  Widget buildStar(int rating, int numreviews) {
    final int normalizedRating = rating < 0 ? 0 : (rating > 5 ? 5 : rating);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= normalizedRating; i++)
          const Icon(
            Icons.star,
            color: Colors.green,
            size: 24,
          ),
        for (int i = 1; i <= (5 - normalizedRating); i++)
          const Icon(
            Icons.star,
            size: 24,
          ),
        const SizedBox(width: 20),
        Text(
          '$numreviews Reviews',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget buildicontab(IconData iconval, String title, String time) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconval,
            color: Colors.green,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            time,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );

  Widget buildRowTabs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildicontab(Icons.kitchen, 'PREP', '25 min'),
          buildicontab(Icons.timer, 'COOK', '1 hr'),
          buildicontab(Icons.restaurant, 'FEEDS', '4-6'),
        ],
      );

  Widget buildcolumn() => Column(
        children: [
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/960px-Pavlova_dessert.JPG',
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(15),
            child: const Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK 1 ARACENA'),
      ),
      body: Center(
        child: ListView(
          children: [
            buildcolumn(),
            buildStar(2, 90),
            const SizedBox(height: 20),
            buildRowTabs(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

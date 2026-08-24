import 'package:flutter/material.dart';

class Activity02Page extends StatelessWidget {
  const Activity02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Activity 02')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Row and Column Alignment',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Open a section below. Every alignment example is placed inside a bordered area and the page is scrollable so each example can be viewed and screenshotted separately.',
          ),
          const SizedBox(height: 24),
          _CategoryCard(
            title: 'Row MainAxisAlignment',
            subtitle:
                'center, spaceAround, spaceBetween, spaceEvenly, start, end',
            icon: Icons.swap_horiz,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const RowMainAxisAlignmentPage(),
              ),
            ),
          ),
          const SizedBox(height: 14),
          _CategoryCard(
            title: 'Row CrossAxisAlignment',
            subtitle: 'start, end, center, stretch',
            icon: Icons.height,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const RowCrossAxisAlignmentPage(),
              ),
            ),
          ),
          const SizedBox(height: 14),
          _CategoryCard(
            title: 'Column MainAxisAlignment',
            subtitle:
                'center, spaceAround, spaceBetween, spaceEvenly, start, end',
            icon: Icons.swap_vert,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const ColumnMainAxisAlignmentPage(),
              ),
            ),
          ),
          const SizedBox(height: 14),
          _CategoryCard(
            title: 'Column CrossAxisAlignment',
            subtitle: 'center, start, end, stretch',
            icon: Icons.width_normal,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const ColumnCrossAxisAlignmentPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowMainAxisAlignmentPage extends StatelessWidget {
  const RowMainAxisAlignmentPage({super.key});

  static const _examples = <_MainAxisExample>[
    _MainAxisExample(
      name: 'MainAxisAlignment.center',
      description: 'Centers all children in the middle of the available space.',
      alignment: MainAxisAlignment.center,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.spaceAround',
      description:
          'Puts equal space around each child. Full-size space between items and half-size space at the edges.',
      alignment: MainAxisAlignment.spaceAround,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.spaceBetween',
      description:
          'Puts equal space between children, but no space at the start or end.',
      alignment: MainAxisAlignment.spaceBetween,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.spaceEvenly',
      description: 'Puts equal space everywhere, including at the edges.',
      alignment: MainAxisAlignment.spaceEvenly,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.start',
      description: 'Puts all children at the start (left side) of the Row.',
      alignment: MainAxisAlignment.start,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.end',
      description: 'Puts all children at the end (right side) of the Row.',
      alignment: MainAxisAlignment.end,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _AlignmentListPage(
      title: 'Row MainAxisAlignment',
      children: [
        for (final example in _examples)
          _AlignmentDemoCard(
            title: example.name,
            description: example.description,
            demoHeight: 220,
            child: Row(
              mainAxisAlignment: example.alignment,
              children: _rowChildren(),
            ),
          ),
      ],
    );
  }
}

class RowCrossAxisAlignmentPage extends StatelessWidget {
  const RowCrossAxisAlignmentPage({super.key});

  static const _examples = <_CrossAxisExample>[
    _CrossAxisExample(
      name: 'CrossAxisAlignment.start',
      description:
          'Aligns children at the top of the Row (top edge of the container).',
      alignment: CrossAxisAlignment.start,
    ),
    _CrossAxisExample(
      name: 'CrossAxisAlignment.end',
      description: 'Aligns children at the bottom of the Row.',
      alignment: CrossAxisAlignment.end,
    ),
    _CrossAxisExample(
      name: 'CrossAxisAlignment.center',
      description: 'Aligns children in the vertical center of the Row.',
      alignment: CrossAxisAlignment.center,
    ),
    _CrossAxisExample(
      name: 'CrossAxisAlignment.stretch',
      description: 'Stretches all children to fill the Row’s height.',
      alignment: CrossAxisAlignment.stretch,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _AlignmentListPage(
      title: 'Row CrossAxisAlignment',
      children: [
        for (final example in _examples)
          _AlignmentDemoCard(
            title: example.name,
            description: example.description,
            demoHeight: 260,
            child: Row(
              crossAxisAlignment: example.alignment,
              children: _rowChildren(),
            ),
          ),
      ],
    );
  }
}

class ColumnMainAxisAlignmentPage extends StatelessWidget {
  const ColumnMainAxisAlignmentPage({super.key});

  static const _examples = <_MainAxisExample>[
    _MainAxisExample(
      name: 'MainAxisAlignment.center',
      description: 'Centers all children in the middle of the available space.',
      alignment: MainAxisAlignment.center,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.spaceAround',
      description: 'Puts equal space around each child.',
      alignment: MainAxisAlignment.spaceAround,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.spaceBetween',
      description:
          'Puts equal space between children, but no space at the top or bottom.',
      alignment: MainAxisAlignment.spaceBetween,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.spaceEvenly',
      description: 'Puts equal space everywhere, including top and bottom.',
      alignment: MainAxisAlignment.spaceEvenly,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.start',
      description: 'Puts all children at the top of the Column.',
      alignment: MainAxisAlignment.start,
    ),
    _MainAxisExample(
      name: 'MainAxisAlignment.end',
      description: 'Puts all children at the bottom of the Column.',
      alignment: MainAxisAlignment.end,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _AlignmentListPage(
      title: 'Column MainAxisAlignment',
      children: [
        for (final example in _examples)
          _AlignmentDemoCard(
            title: example.name,
            description: example.description,
            demoHeight: 430,
            child: Column(
              mainAxisAlignment: example.alignment,
              children: _columnChildren(),
            ),
          ),
      ],
    );
  }
}

class ColumnCrossAxisAlignmentPage extends StatelessWidget {
  const ColumnCrossAxisAlignmentPage({super.key});

  static const _examples = <_CrossAxisExample>[
    _CrossAxisExample(
      name: 'CrossAxisAlignment.center',
      description: 'Aligns all children in the horizontal center.',
      alignment: CrossAxisAlignment.center,
    ),
    _CrossAxisExample(
      name: 'CrossAxisAlignment.start',
      description: 'Aligns all children to the left.',
      alignment: CrossAxisAlignment.start,
    ),
    _CrossAxisExample(
      name: 'CrossAxisAlignment.end',
      description: 'Aligns all children to the right.',
      alignment: CrossAxisAlignment.end,
    ),
    _CrossAxisExample(
      name: 'CrossAxisAlignment.stretch',
      description: 'Expands each child horizontally to fill the available width.',
      alignment: CrossAxisAlignment.stretch,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _AlignmentListPage(
      title: 'Column CrossAxisAlignment',
      children: [
        for (final example in _examples)
          _AlignmentDemoCard(
            title: example.name,
            description: example.description,
            demoHeight: 320,
            child: Column(
              crossAxisAlignment: example.alignment,
              children: _columnChildren(),
            ),
          ),
      ],
    );
  }
}

class _AlignmentListPage extends StatelessWidget {
  const _AlignmentListPage({
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: children.length,
        separatorBuilder: (_, __) => const SizedBox(height: 20),
        itemBuilder: (_, index) => children[index],
      ),
    );
  }
}

class _AlignmentDemoCard extends StatelessWidget {
  const _AlignmentDemoCard({
    required this.title,
    required this.description,
    required this.demoHeight,
    required this.child,
  });

  final String title;
  final String description;
  final double demoHeight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 6),
          Text(description),
          const SizedBox(height: 14),
          Container(
            height: demoHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              CircleAvatar(child: Icon(icon)),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(subtitle),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainAxisExample {
  const _MainAxisExample({
    required this.name,
    required this.description,
    required this.alignment,
  });

  final String name;
  final String description;
  final MainAxisAlignment alignment;
}

class _CrossAxisExample {
  const _CrossAxisExample({
    required this.name,
    required this.description,
    required this.alignment,
  });

  final String name;
  final String description;
  final CrossAxisAlignment alignment;
}

List<Widget> _rowChildren() => [
      Container(
        width: 90,
        height: 90,
        color: Colors.red,
      ),
      Container(
        width: 80,
        height: 80,
        color: Colors.yellow,
      ),
      Container(
        width: 70,
        height: 70,
        color: Colors.blue,
      ),
    ];

List<Widget> _columnChildren() => [
      Container(
        width: 90,
        height: 90,
        color: Colors.red,
      ),
      Container(
        width: 80,
        height: 80,
        color: Colors.yellow,
      ),
      Container(
        width: 70,
        height: 70,
        color: Colors.blue,
      ),
    ];

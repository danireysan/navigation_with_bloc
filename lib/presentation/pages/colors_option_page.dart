import 'package:flutter/material.dart';

class ColorsOptionPage extends StatelessWidget {
  static const routeName = '/colors-option';
  const ColorsOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors Option'),
      ),
      body: Column(
        children: [
          const Text('Colors Option'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('5 colors'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('3 colors'),
          ),
        ],
      ),
    );
  }
}

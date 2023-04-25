import 'package:flutter/material.dart';

class FirstColorPage extends StatelessWidget {
  static const routeName = '/first-color';
  const FirstColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(167, 199, 231, 1),
      appBar: AppBar(
        title: const Text('First Color'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The page number : ',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Center(
            child: Text(
              'First Color',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}

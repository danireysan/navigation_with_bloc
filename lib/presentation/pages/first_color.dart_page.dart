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
        children: const [
          Text('The page number is: '),
          Center(
            child: Text('First Color'),
          ),
        ],
      ),
    );
  }
}

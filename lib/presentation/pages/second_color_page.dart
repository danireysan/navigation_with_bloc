import 'package:flutter/material.dart';

class SecondColorPage extends StatelessWidget {
  static const routeName = '/second-color';
  const SecondColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 200, 220, 1),
      appBar: AppBar(
        title: const Text('Second Color'),
      ),
      body: Column(
        children: const [
          Text('The page number is: '),
          Center(
            child: Text('Second Color'),
          ),
        ],
      ),
    );
  }
}

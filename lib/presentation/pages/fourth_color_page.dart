import 'package:flutter/material.dart';

class FourthColorPage extends StatelessWidget {
  static const routeName = '/fourth-color';
  const FourthColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(119, 221, 119, 1),
      appBar: AppBar(
        title: const Text('Fourth Color'),
      ),
      body: Column(
        children: const [
          Text('The page number is: '),
          Center(
            child: Text('Fourth Color'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ThirdColorPage extends StatelessWidget {
  static const routeName = '/third-color';
  const ThirdColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 253, 150, 1),
      appBar: AppBar(
        title: const Text('Third Color'),
      ),
      body: Column(
        children: const [
          Text('The page number is: '),
          Center(
            child: Text('Third Color'),
          ),
        ],
      ),
    );
  }
}

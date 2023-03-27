import 'package:flutter/material.dart';

class FifthColorPage extends StatelessWidget {
  static const routeName = '/fourth-color';
  const FifthColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(195, 177, 225, 1),
      appBar: AppBar(
        title: const Text('Fifth Color'),
      ),
      body: Column(
        children: const [
          Text('The page number is: '),
          Center(
            child: Text('Fifth Color'),
          ),
        ],
      ),
    );
  }
}

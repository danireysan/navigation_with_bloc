import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_with_bloc/option_navigation_model.dart';

class ColorsOptionPage extends StatelessWidget {
  static const routeName = '/colors-option';
  const ColorsOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 200, 152, 1),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Colors Options',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                backgroundColor: const Color.fromRGBO(167, 199, 231, 1),
              ),
              child: const Text('5 colors'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                backgroundColor: const Color.fromRGBO(167, 199, 231, 1),
              ),
              child: const Text('3 colors'),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

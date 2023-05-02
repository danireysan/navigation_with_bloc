import 'package:flutter/material.dart';

import '../widgets/scaffold_body_widget.dart';

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
      body: const ScaffoldBodyWidget(title: 'Second Color'),
    );
  }
}

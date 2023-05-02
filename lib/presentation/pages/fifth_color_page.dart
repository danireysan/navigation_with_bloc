import 'package:flutter/material.dart';

import '../widgets/scaffold_body_widget.dart';

class FifthColorPage extends StatelessWidget {
  static const routeName = '/fifth-color';
  const FifthColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(195, 177, 225, 1),
        appBar: AppBar(
          title: const Text('Fifth Color'),
        ),
        body: const ScaffoldBodyWidget(title: 'Fifth Color'));
  }
}

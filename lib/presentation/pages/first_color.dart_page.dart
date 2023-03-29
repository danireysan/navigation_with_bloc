import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_with_bloc/presentation/bloc/navigation_option_bloc.dart';

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
      body: BlocBuilder<NavigationOptionBloc, NavigationOptionState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'The page number : ${state.listIndex}/${state.optionNavigationModel.routesList.length}.',
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
          );
        },
      ),
    );
  }
}

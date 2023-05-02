import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/navigation_list_lenght_util.dart';
import '../../core/utils/navigation_list_route_util.dart';
import '../bloc/navigation_bloc.dart';

class ScaffoldBodyWidget extends StatelessWidget {
  const ScaffoldBodyWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        final navigationOption = state.navigationOption;
        final listLen = navigationListLen(navigationOption);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The page number : ${state.index + 1}/$listLen ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            // Make a button that says next page
            ElevatedButton(
              onPressed: () {
                context.read<NavigationBloc>().add(
                      NextPageEvent(),
                    );
                Navigator.of(context).pushNamed(
                  navigationListRoute(navigationOption, state.index),
                );
              },
              child: const Text('Next Page'),
            ),

            // Make a button that says previous page
            ElevatedButton(
              onPressed: () {
                context.read<NavigationBloc>().add(
                      PreviousPageEvent(),
                    );
                Navigator.of(context).pushNamed(
                  navigationListRoute(navigationOption, state.index),
                );
              },
              child: const Text('Previous Page'),
            ),
          ],
        );
      },
    );
  }
}

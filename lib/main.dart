import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_with_bloc/core/routes.dart';
import 'package:navigation_with_bloc/core/theme.dart';
import 'package:navigation_with_bloc/presentation/bloc/navigation_bloc.dart';
import 'package:navigation_with_bloc/presentation/pages/colors_option_page.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: ColorsOptionPage.routeName,
      onGenerateRoute: PageClassGenerator.getNamedScreen,
    );
  }
}

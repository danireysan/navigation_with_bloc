import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:navigation_with_bloc/presentation/pages/colors_option_page.dart';
import 'package:navigation_with_bloc/presentation/pages/fifth_color_page.dart';
import 'package:navigation_with_bloc/presentation/pages/first_color.dart_page.dart';
import 'package:navigation_with_bloc/presentation/pages/fourth_color_page.dart';
import 'package:navigation_with_bloc/presentation/pages/second_color_page.dart';
import 'package:navigation_with_bloc/presentation/pages/third_color_page_page.dart';

class PageClassGenerator {
  static Route<dynamic> getNamedScreen(RouteSettings routeSettings) {
    Widget Function(BuildContext) builder;

    final routesMap = {
      ColorsOptionPage.routeName: (context) => const ColorsOptionPage(),
      FirstColorPage.routeName: (context) => const FirstColorPage(),
      SecondColorPage.routeName: (context) => const SecondColorPage(),
      ThirdColorPage.routeName: (context) => const ThirdColorPage(),
      FourthColorPage.routeName: (context) => const FourthColorPage(),
      FifthColorPage.routeName: (context) => const FifthColorPage(),
    };

    defaultPage(context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${routeSettings.name}'),
          ),
        );
    builder = routesMap[routeSettings.name] ?? defaultPage;

    return _commonPageWrappper(
      routeSettings: routeSettings,
      builder: builder,
    );
  }

  /// Configuration method to create our own navigation
  static Route<dynamic> _commonPageWrappper({
    required RouteSettings routeSettings,
    required Widget Function(BuildContext) builder,
  }) {
    return MaterialWithModalsPageRoute(
      settings: routeSettings,
      builder: (context) => Container(
        color: Colors.black.withOpacity(0.4),
        child: SafeArea(
          top: false,
          bottom: false,
          child: builder(context),
        ),
      ),
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:navigation_with_bloc/presentation/pages/fifth_color_page.dart';
import 'package:navigation_with_bloc/presentation/pages/first_color.dart_page.dart';

import 'presentation/pages/fourth_color_page.dart';
import 'presentation/pages/second_color_page.dart';
import 'presentation/pages/third_color_page_page.dart';

enum NavigationOption { fiveColors, threeColors, none }

class OptionNavigationModel extends Equatable {
  final NavigationOption option;
  final List<String> routesList;

  const OptionNavigationModel({
    required this.option,
    required this.routesList,
  });

  @override
  List<Object> get props => [option, routesList];

  static const fiveColorOption = OptionNavigationModel(
    option: NavigationOption.fiveColors,
    routesList: [
      FirstColorPage.routeName,
      SecondColorPage.routeName,
      ThirdColorPage.routeName,
      FourthColorPage.routeName,
      FifthColorPage.routeName,
    ],
  );

  static const threeColorOption = OptionNavigationModel(
    option: NavigationOption.threeColors,
    routesList: [
      FirstColorPage.routeName,
      SecondColorPage.routeName,
      ThirdColorPage.routeName,
    ],
  );

  static const noneOption = OptionNavigationModel(
    option: NavigationOption.none,
    routesList: [],
  );
}

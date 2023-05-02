import '../../option_navigation_model.dart';

String navigationListRoute(NavigationOption navigationOption, int index) {
  final map = <NavigationOption, OptionNavigationModel>{
    NavigationOption.fiveColors: OptionNavigationModel.fiveColorOption,
    NavigationOption.threeColors: OptionNavigationModel.threeColorOption,
  };

  final list = map[navigationOption]!.routesList;

  return list[index + 1];
}

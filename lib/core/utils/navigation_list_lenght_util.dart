import 'package:navigation_with_bloc/option_navigation_model.dart';

int navigationListLen(NavigationOption navigationOption) {
  final map = <NavigationOption, OptionNavigationModel>{
    NavigationOption.fiveColors: OptionNavigationModel.fiveColorOption,
    NavigationOption.threeColors: OptionNavigationModel.threeColorOption,
  };

  return map[navigationOption]!.routesList.length;
}

part of 'navigation_option_bloc.dart';

abstract class NavigationOptionEvent extends Equatable {
  const NavigationOptionEvent();

  @override
  List<Object> get props => [];
}

class OptionFiveColorsEvent extends NavigationOptionEvent {
  final OptionNavigationModel optionNavigationModel =
      OptionNavigationModel.fiveColorOption;
  const OptionFiveColorsEvent();

  @override
  List<Object> get props => [optionNavigationModel];
}

class OptionThreeColorsEvent extends NavigationOptionEvent {
  final OptionNavigationModel optionNavigationModel =
      OptionNavigationModel.threeColorOption;
  const OptionThreeColorsEvent();

  @override
  List<Object> get props => [optionNavigationModel];
}

class NavigateNextRoute extends NavigationOptionEvent {}

class NavigatePreviousRoute extends NavigationOptionEvent {}

part of 'navigation_option_bloc.dart';

abstract class NavigationOptionState extends Equatable {
  final int listIndex;
  final OptionNavigationModel optionNavigationModel;

  const NavigationOptionState({
    required this.listIndex,
    required this.optionNavigationModel,
  });

  @override
  List<Object> get props => [listIndex, optionNavigationModel];
}

class NavigationOptionInitial extends NavigationOptionState {
  const NavigationOptionInitial()
      : super(
          listIndex: 0,
          optionNavigationModel: OptionNavigationModel.noneOption,
        );
}

class OptionSelectedState extends NavigationOptionState {
  const OptionSelectedState({
    required int listIndex,
    required OptionNavigationModel newNavigationOption,
  }) : super(
          listIndex: listIndex,
          optionNavigationModel: newNavigationOption,
        );
}

class NavigateToNextRoute extends NavigationOptionState {
  const NavigateToNextRoute({
    required int increasedValue,
    required OptionNavigationModel newNavigationOption,
  }) : super(
          listIndex: increasedValue,
          optionNavigationModel: newNavigationOption,
        );
}

class NavigateToPreviousRoute extends NavigationOptionState {
  const NavigateToPreviousRoute({
    required int decreasedValue,
    required OptionNavigationModel newNavigationOption,
  }) : super(
          listIndex: decreasedValue,
          optionNavigationModel: newNavigationOption,
        );
}

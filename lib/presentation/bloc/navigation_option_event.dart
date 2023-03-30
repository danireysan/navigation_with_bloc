part of 'navigation_option_bloc.dart';

abstract class NavigationOptionEvent extends Equatable {
  const NavigationOptionEvent();

  @override
  List<Object> get props => [];
}

class SelectOptionEvent extends NavigationOptionEvent {
  final OptionNavigationModel optionNavigationModel;
  const SelectOptionEvent({
    required this.optionNavigationModel,
  });

  @override
  List<Object> get props => [optionNavigationModel];
}

class NavigateNextRoute extends NavigationOptionEvent {}

class NavigatePreviousRoute extends NavigationOptionEvent {}

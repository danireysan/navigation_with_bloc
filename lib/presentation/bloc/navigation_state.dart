part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  final NavigationOption navigationOption;
  final int index;
  const NavigationState({required this.navigationOption, required this.index});

  @override
  List<Object> get props => [navigationOption];
}

class NavigationInitial extends NavigationState {
  const NavigationInitial()
      : super(navigationOption: NavigationOption.none, index: 0);
}

class SelectedOptionState extends NavigationState {
  final NavigationOption selectedOption;
  final int newIndex;
  const SelectedOptionState(this.selectedOption, this.newIndex)
      : super(navigationOption: selectedOption, index: newIndex);

  @override
  List<Object> get props => [selectedOption, newIndex];
}

class NextPage extends NavigationState {
  final NavigationOption selectedOption;
  final int newIndex;
  const NextPage(this.selectedOption, this.newIndex)
      : super(navigationOption: selectedOption, index: newIndex);

  @override
  List<Object> get props => [selectedOption, index];
}

class PreviousPage extends NavigationState {
  final NavigationOption selectedOption;
  final int newIndex;
  const PreviousPage(this.selectedOption, this.newIndex)
      : super(navigationOption: selectedOption, index: newIndex);

  @override
  List<Object> get props => [selectedOption, newIndex];
}

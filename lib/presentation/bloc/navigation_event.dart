part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class PickOptionEvent extends NavigationEvent {
  final NavigationOption selectedOption;
  const PickOptionEvent(this.selectedOption);

  @override
  List<Object> get props => [selectedOption];
}

class NextPageEvent extends NavigationEvent {}

class PreviousPageEvent extends NavigationEvent {}

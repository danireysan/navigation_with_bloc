import 'package:equatable/equatable.dart';
import 'package:navigation_with_bloc/option_navigation_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_option_event.dart';
part 'navigation_option_state.dart';

class NavigationOptionBloc
    extends Bloc<NavigationOptionEvent, NavigationOptionState> {
  NavigationOptionBloc() : super(const NavigationOptionInitial()) {
    on<SelectOptionEvent>(
      (event, emit) {
        emit(
          OptionSelectedState(
            listIndex: 1,
            newNavigationOption: event.optionNavigationModel,
          ),
        );
      },
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:navigation_with_bloc/option_navigation_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_option_event.dart';
part 'navigation_option_state.dart';

class NavigationOptionBloc
    extends Bloc<NavigationOptionEvent, NavigationOptionState> {
  NavigationOptionBloc() : super(const NavigationOptionInitial()) {
    on<OptionFiveColorsEvent>((event, emit) {
      emit(
        const OptionSelectedState(
          listIndex: 1,
          newNavigationOption: OptionNavigationModel.fiveColorOption,
        ),
      );
    });
    on<OptionThreeColorsEvent>((event, emit) {
      emit(
        const OptionSelectedState(
          listIndex: 1,
          newNavigationOption: OptionNavigationModel.threeColorOption,
        ),
      );
    });
    on<NavigateNextRoute>((event, emit) {
      if (state.listIndex < 1) {
        emit(
          NavigateToNextRoute(
            increasedValue: state.listIndex + 1,
            newNavigationOption: state.optionNavigationModel,
          ),
        );
      }
    });
    on<NavigatePreviousRoute>((event, emit) {
      if (state.listIndex > 0) {
        emit(
          NavigateToPreviousRoute(
            decreasedValue: state.listIndex - 1,
            newNavigationOption: state.optionNavigationModel,
          ),
        );
      }
    });
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_with_bloc/option_navigation_model.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial()) {
    on<PickOptionEvent>((event, emit) {
      emit(SelectedOptionState(event.selectedOption, 0));
    });
    on<NextPageEvent>((event, emit) {
      emit(
        NextPage(
          state.navigationOption,
          state.index + 1,
        ),
      );
    });
    on<PreviousPageEvent>((event, emit) {
      emit(
        PreviousPage(
          state.navigationOption,
          state.index - 1,
        ),
      );
    });
  }
}

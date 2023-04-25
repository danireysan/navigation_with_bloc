import 'package:flutter_test/flutter_test.dart';
import 'package:navigation_with_bloc/option_navigation_model.dart';
import 'package:navigation_with_bloc/presentation/bloc/navigation_bloc.dart';

void main() {
  group('NavigationBloc', () {
    late NavigationBloc bloc;

    setUp(() => bloc = NavigationBloc());

    tearDown(() => bloc.close());
    test('initial state is NavigationOption.none', () {
      expect(bloc.state.navigationOption, NavigationOption.none);
    });

    test(
      'should emit NavigationOption.fiveColors when toggled from NavigationOption.none',
      () {
        // arrange
        final expected = [
          NavigationOption.threeColors,
          NavigationOption.fiveColors,
          NavigationOption.threeColors
        ];

        // act
        bloc.add(const PickOptionEvent(NavigationOption.threeColors));
        bloc.add(const PickOptionEvent(NavigationOption.fiveColors));
        bloc.add(const PickOptionEvent(NavigationOption.threeColors));
        // assert

        expectLater(
          bloc.stream.map((state) => state.navigationOption),
          emitsInOrder(expected),
        );
      },
    );
    test(
      'should increase and decrease',
      () async {
        // arrange
        final expected = [1, 2, 3, 2, 3, 4, 5];
        // act
        bloc.add(NextPageEvent());
        bloc.add(NextPageEvent());
        bloc.add(NextPageEvent());
        bloc.add(PreviousPageEvent());
        bloc.add(NextPageEvent());
        bloc.add(NextPageEvent());
        bloc.add(NextPageEvent());
        // assert
        expectLater(
          bloc.stream.map((state) => state.index),
          emitsInOrder(expected),
        );
      },
    );
  });
}

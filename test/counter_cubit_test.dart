import 'package:bloc_mock_time/counter.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';

void main() {
  withClock(
    Clock.fixed(DateTime(1970, 1, 1)),
    () {
      blocTest<CounterCubit, int>(
        'should increment',
        build: () => CounterCubit(),
        act: (cubit) => cubit.increment(),
        expect: [
          1,
        ],
      );
    },
  );
}

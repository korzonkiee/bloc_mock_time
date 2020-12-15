import 'package:bloc_mock_time/counter.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should increment with mocked time', () {
    withClock(
      Clock.fixed(DateTime(1970, 1, 1)),
      () {
        runBlocTest<CounterCubit, int>(
          'should increment',
          build: () => CounterCubit(),
          act: (cubit) => cubit.increment(),
          expect: [1],
        );
      },
    );
  });
}

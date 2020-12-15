import 'package:bloc/bloc.dart';
import 'package:clock/clock.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<int> {
  /// {@macro counter_cubit}
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  void increment() {
    print('Incremented at: ${clock.now()}');
    emit(state + 1);
  }

  /// Subtract 1 from the current state.
  void decrement() {
    print('Decremented at: ${clock.now()}');
    emit(state - 1);
  }
}

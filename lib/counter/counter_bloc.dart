import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState(count: 0)) {
    on<Increment>((event, emit) {
      final currentState = state.count;
      final incrementValue = currentState + 1;
      return emit(CounterState(count: incrementValue));
    });
    on<Decrement>((event, emit) {
      final currentState = state.count;
      final decrementValue = currentState - 1;
      return emit(CounterState(count: decrementValue));
    });
  }
}

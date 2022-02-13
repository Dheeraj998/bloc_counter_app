import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    final currenState = state.count;
    final incrementedValue = currenState + 1;
    on<Increment>((event, emit) {
      return emit(CounterState(count: incrementedValue));
    });
    on<Decrement>((event, emit) {
      final currentState = state.count;
      final decrementValue = currentState - 1;
      return emit(CounterState(count: decrementValue));
    });
  }
}

part of 'counter_bloc.dart';

class CounterState {
  final int count;

  CounterState({required this.count});
}

class InitialState extends CounterState {
  InitialState({required int count}) : super(count: 0);
}

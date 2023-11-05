part of 'counter_bloc.dart';

class CounterState {
  int counter1;
  final int counter2;
  final int counter3;
  final bool isFetching;
  CounterState(
      {required this.counter1, required this.counter2, required this.counter3, required this.isFetching});
  CounterState.initial() : this(counter1: 0, counter2: 0, counter3: 0, isFetching: false);

  CounterState copyWith({int? counter1, int? counter2, int? counter3, bool? isFetching}) {
    return CounterState(
      counter1: counter1 ?? this.counter1,
      counter2: counter2 ?? this.counter2,
      counter3: counter3 ?? this.counter3,
      isFetching: isFetching?? this.isFetching
    );
  }
}

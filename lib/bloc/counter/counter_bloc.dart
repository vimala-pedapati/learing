import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<OnFloatingActionnButtonPressedEvent>(onFloatingActionnButtonPressed);
    on<OnPressedTwoEvent>(onPressedTwo);
  }
  onFloatingActionnButtonPressed(
      OnFloatingActionnButtonPressedEvent event, Emitter emit) {
    int value = state.counter1 + event.value; // Bussiness Logic
    emit(state.copyWith(counter1: value));
  }

  onPressedTwo(OnPressedTwoEvent event, Emitter emit) {
    int value = state.counter2! + 1;
    emit(state.copyWith(counter2: value));
  }
}

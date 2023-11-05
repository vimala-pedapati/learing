// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

class CounterEvent {}

class OnFloatingActionnButtonPressedEvent extends CounterEvent {
  int value;
  OnFloatingActionnButtonPressedEvent({
    required this.value,
  }); 
}


class OnPressedTwoEvent extends CounterEvent{}



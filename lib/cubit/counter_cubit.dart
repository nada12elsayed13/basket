import 'package:basket/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit():super(CounterAIncremantState());

  int numA = 0;

  int numB = 0;
  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      numA += buttonNumber;
      emit(CounterAIncremantState());
    } else {
      numB += buttonNumber;
      emit(CounterBIncremantState());
    }
  }
}

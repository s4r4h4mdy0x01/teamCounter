import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CountertState> {
  int pointATeam = 0;
  int pointBTeam = 0;

  CounterCubit() : super(CounterAIcrementState());
  void teamIncrement({required String team, required int number}) {
    if (team == 'A') {
      pointATeam += number;
      emit(CounterAIcrementState());
    } else if (team == 'B') {
      pointBTeam += number;
      emit(CounterBIcrementState());
    }
  }

  void reset() {
    pointATeam = 0;
    pointBTeam = 0;
    emit(CounterBIcrementState());
    emit(CounterAIcrementState());
  }
}

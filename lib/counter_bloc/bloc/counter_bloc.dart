import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_bloc/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc() : super(0){

   on<IncreaseEvent>((event, emit) => emit(state + 1));
   on<DecreaseEvent>((event, emit) => emit(state - 1));
  }

}

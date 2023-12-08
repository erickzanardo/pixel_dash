import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

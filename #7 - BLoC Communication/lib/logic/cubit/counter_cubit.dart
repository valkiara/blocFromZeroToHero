import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  // final InternetCubit internetCubit;
  // StreamSubscription internetStreamSubscription;
  CounterCubit() : super(CounterState(counterValue: 0));
  // {
  //   internetStreamSubscription = internetCubit.listen((internetState) {
  //     if (internetState is InternetAvailable) {
  //       if (internetState.internetType == InternetType.Wifi) {
  //         this.increment();
  //       } else if (internetState.internetType == InternetType.Mobile) {
  //         this.increment();
  //       }
  //     } else if (internetState is NoInternet) {
  //       this.decrement();
  //     }
  //   });
  // }

  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}

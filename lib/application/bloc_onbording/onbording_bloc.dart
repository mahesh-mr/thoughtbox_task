import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:thoughtbox/application/bloc_onbording/onbording_event.dart';
import 'package:thoughtbox/application/bloc_onbording/onbording_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState()) {
    on<OnboardingEvent>((event, emit) {
      emit(OnboardingState(initialIndex: state.initialIndex));
    });
  }
}

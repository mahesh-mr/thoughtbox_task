import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:thoughtbox/domain/model_weather/model_weather.dart';
import 'package:thoughtbox/infrastructure/api_service/failure/main_failure.dart';
import 'package:thoughtbox/infrastructure/api_service/weather/weather_repo.dart';
part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherReppo weatherReppo;
  WeatherBloc(this.weatherReppo) : super(WeatherState.initial()) {
    on<_GetWeatherData>((event, emit) async {
      emit(
        state.copyWith(
          isLoding: true,
          weartheFailureorSuccess: none(),
        ),
      );
      final Either<MainFailure, Weather> weatherOptions =
          await weatherReppo.getWeatherData();

      emit(
        weatherOptions.fold(
          (failure) => state.copyWith(
            isLoding: false,
            weartheFailureorSuccess: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoding: false,
            weather: success,
            weartheFailureorSuccess: some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}

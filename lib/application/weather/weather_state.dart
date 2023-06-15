part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isLoding,
     Weather? weather,
    required Option<Either<MainFailure, Weather>> weartheFailureorSuccess,
  }) = _WeatherState;

  factory WeatherState.initial() {
    return WeatherState(
        isLoding: false, weartheFailureorSuccess: none(), );
  }
}

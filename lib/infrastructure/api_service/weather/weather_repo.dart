import 'package:dartz/dartz.dart';
import 'package:thoughtbox/domain/model_weather/model_weather.dart';
import 'package:thoughtbox/infrastructure/api_service/failure/main_failure.dart';

abstract class WeatherReppo {
  Future<Either<MainFailure,Weather >>getWeatherData();
  
}
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:thoughtbox/domain/model_weather/model_weather.dart';
import 'package:thoughtbox/infrastructure/api_service/failure/main_failure.dart';
import 'package:thoughtbox/infrastructure/api_service/weather/weather_repo.dart';
import 'package:thoughtbox/infrastructure/core/core_api.dart';

@LazySingleton(as: WeatherReppo)
class WeatherServiceApi implements WeatherReppo {
  Weather weather = Weather();
  @override
  Future<Either<MainFailure, Weather>> getWeatherData() async {
    try {
      final respose = await Dio(BaseOptions()).get(BaseApiUrl.url);
      if (respose.statusCode == 200 || respose.statusCode == 201) {
        weather = Weather.fromJson(respose.data);
        final data = Weather.fromJson(respose.data);

        return Right(data);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clintFailure());
    }
  }
}

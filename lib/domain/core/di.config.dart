// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/weather/weather_bloc.dart' as _i5;
import '../../infrastructure/api_service/weather/weather_repo.dart' as _i3;
import '../../infrastructure/api_service/weather/weather_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.WeatherReppo>(() => _i4.WeatherServiceApi());
  gh.factory<_i5.WeatherBloc>(() => _i5.WeatherBloc(get<_i3.WeatherReppo>()));
  return get;
}

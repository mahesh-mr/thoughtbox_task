// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherData value) getWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherData value)? getWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherData value)? getWeatherData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetWeatherDataCopyWith<$Res> {
  factory _$$_GetWeatherDataCopyWith(
          _$_GetWeatherData value, $Res Function(_$_GetWeatherData) then) =
      __$$_GetWeatherDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetWeatherDataCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_GetWeatherData>
    implements _$$_GetWeatherDataCopyWith<$Res> {
  __$$_GetWeatherDataCopyWithImpl(
      _$_GetWeatherData _value, $Res Function(_$_GetWeatherData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetWeatherData implements _GetWeatherData {
  const _$_GetWeatherData();

  @override
  String toString() {
    return 'WeatherEvent.getWeatherData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetWeatherData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherData,
  }) {
    return getWeatherData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherData,
  }) {
    return getWeatherData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherData,
    required TResult orElse(),
  }) {
    if (getWeatherData != null) {
      return getWeatherData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherData value) getWeatherData,
  }) {
    return getWeatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherData value)? getWeatherData,
  }) {
    return getWeatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherData value)? getWeatherData,
    required TResult orElse(),
  }) {
    if (getWeatherData != null) {
      return getWeatherData(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherData implements WeatherEvent {
  const factory _GetWeatherData() = _$_GetWeatherData;
}

/// @nodoc
mixin _$WeatherState {
  bool get isLoding => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  Option<Either<MainFailure, Weather>> get weartheFailureorSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool isLoding,
      Weather? weather,
      Option<Either<MainFailure, Weather>> weartheFailureorSuccess});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? weather = freezed,
    Object? weartheFailureorSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      weartheFailureorSuccess: null == weartheFailureorSuccess
          ? _value.weartheFailureorSuccess
          : weartheFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Weather>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoding,
      Weather? weather,
      Option<Either<MainFailure, Weather>> weartheFailureorSuccess});
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherState>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? weather = freezed,
    Object? weartheFailureorSuccess = null,
  }) {
    return _then(_$_WeatherState(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      weartheFailureorSuccess: null == weartheFailureorSuccess
          ? _value.weartheFailureorSuccess
          : weartheFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Weather>>,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.isLoding,
      this.weather,
      required this.weartheFailureorSuccess});

  @override
  final bool isLoding;
  @override
  final Weather? weather;
  @override
  final Option<Either<MainFailure, Weather>> weartheFailureorSuccess;

  @override
  String toString() {
    return 'WeatherState(isLoding: $isLoding, weather: $weather, weartheFailureorSuccess: $weartheFailureorSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            (identical(other.isLoding, isLoding) ||
                other.isLoding == isLoding) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(
                    other.weartheFailureorSuccess, weartheFailureorSuccess) ||
                other.weartheFailureorSuccess == weartheFailureorSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoding, weather, weartheFailureorSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required final bool isLoding,
      final Weather? weather,
      required final Option<Either<MainFailure, Weather>>
          weartheFailureorSuccess}) = _$_WeatherState;

  @override
  bool get isLoding;
  @override
  Weather? get weather;
  @override
  Option<Either<MainFailure, Weather>> get weartheFailureorSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

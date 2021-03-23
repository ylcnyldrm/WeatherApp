import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:weatherapp/models/weather.dart';

part 'weather__event.dart';

part 'weather__state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is FetchWeatherEvent) {
      yield WeatherLoadingState();
      try {
        yield WeatherLoadedState(weather: Weather());
      } catch (e) {
        yield WeatherErrorState();
      }
    }
  }
}

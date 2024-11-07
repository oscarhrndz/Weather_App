// weather_bloc_state.dart
part of 'weather_bloc_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';  // Assuming you are using the 'weather' package for the Weather class

// Abstract class for the weather states
sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();
  
  @override
  List<Object> get props => [];
}

// Initial state (before weather data is fetched)
final class WeatherBlocInitial extends WeatherBlocState {}

// Loading state (when data is being fetched)
final class WeatherBlocLoading extends WeatherBlocState {}

// Failure state (when there is an error fetching the data)
final class WeatherBlocFailure extends WeatherBlocState {}

// Success state (when the weather data is successfully fetched)
final class WeatherBlocSuccess extends WeatherBlocState {
  final Weather weather;  // Weather data

  const WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}

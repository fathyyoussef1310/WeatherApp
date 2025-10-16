import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Data/User_Repo.dart';
abstract class WeatherState {}
class WeatherInitial extends WeatherState {}
class WeatherLoading extends WeatherState {}
class WeatherLoaded extends WeatherState {
  final Map<String, dynamic> data;
  WeatherLoaded(this.data);
}
class WeatherError extends WeatherState {
  final String error;
  WeatherError(this.error);
}
class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepos repo;
  WeatherCubit(this.repo) : super(WeatherInitial());
  Future<void> getData(String city) async {
    emit(WeatherLoading());
    try {
      final weatherData = await repo.fetchData(city);
      emit(WeatherLoaded(weatherData));
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}

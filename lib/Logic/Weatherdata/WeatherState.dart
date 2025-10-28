import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Data/User_Repo.dart';
import 'package:weatherapp/Data/Weathe_response.dart';

abstract class WeatherState{

}
class WeatherError extends WeatherState{
  String message;
  WeatherError({required this.message});
}
class WeatherInital extends WeatherState{}
class Weatherloading extends WeatherState{
  Map<String,dynamic>data;
  Weatherloading({required this.data});
}
class WeatherLoaded extends WeatherState{}
class WeatherCubit extends Cubit<WeatherState>{
  final weatherRepo repo;
  WeatherCubit(this.repo):super(WeatherInital());
  Future<void>getData(String city)async{
    emit(WeatherLoaded());
    try{
      final ans= await repo.fetchData(city);
      emit(Weatherloading(data: ans));
    }catch(e){
      emit(WeatherError(message: 'Error'));
    }
  }
}
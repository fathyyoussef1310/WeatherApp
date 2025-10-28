import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/Core/RoutesManager.dart';
import 'package:weatherapp/Data/User_Repo.dart';
import 'package:weatherapp/Logic/Weatherdata/WeatherState.dart';

void main() {
  runApp(BlocProvider(create: (context) => WeatherCubit(weatherRepo()), child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.getRoute,
          initialRoute: RoutesManager.splashScreen1,
        );
      },
    );
  }
}
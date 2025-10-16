import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:weatherapp/Core/Widgets/SearchWidget.dart';
import 'package:weatherapp/Logic/Weatherdata/WeatherState.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SearchWidgetWeather(text: "Search for a City"),
              SizedBox(height: 30.h),
              BlocBuilder<WeatherCubit, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherLoading) {
                    return const Center(child: CircularProgressIndicator(color: Colors.blue),);
                  } else if (state is WeatherError) {
                    return Center(
                      child: Text("Error in your search ⚠️", style: GoogleFonts.poppins(color: Colors.red, fontSize: 18.sp,),
                      ),
                    );
                  } else if (state is WeatherLoaded) {
                    final weather = state.data;
                    final temp = weather['current']['temp_c'];
                    final city = weather['location']['name'];
                    final condition = weather['current']['condition']['text'];
                    return Column(
                      children: [
                        Text("Weather in $city", style: GoogleFonts.poppins(color: ColorsManager.white, fontSize: 27.sp, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 25.h),
                        Container(
                          height: 180.h,
                          width: 180.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsManager.solid2,
                          ),
                          alignment: Alignment.center,
                          child: Text("$temp°C", style: GoogleFonts.poppins(color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(condition, style: GoogleFonts.poppins(color: ColorsManager.white, fontSize: 22.sp,),
                        ),
                      ],
                    );
                  }
                  return Text("Enter a city name above 🌍", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 18.sp,),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

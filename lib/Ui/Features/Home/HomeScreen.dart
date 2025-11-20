import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:weatherapp/Core/Widgets/SearchWidget.dart';
import 'package:weatherapp/Data/Condition.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchWidgetWeather(text: "Search for a City"),
              SizedBox(height: 30.h),
              BlocBuilder<WeatherCubit,WeatherState>(
                builder: (context, state) {
                  if(state is WeatherLoaded){
                    return Center(
                      child: CircularProgressIndicator(color: ColorsManager.white,),
                    );
                  }else if(state is WeatherError){
                    return Center(child: Text("Error please Type Correctly 🤦‍♀️",style: GoogleFonts.poppins(color: ColorsManager.red,fontSize: 20.sp,fontWeight: FontWeight.w700),),);
                  }else if(state is Weatherloading){
                    final weather=state.data;
                    final city = weather['location']?['name'] ?? 'Unknown';
                    final degree = weather['current']?['temp_c'] ?? 0;
                    final condition = weather['current']?['condition']?['text'] ?? 'N/A';
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weather in $city",style: GoogleFonts.poppins(color: ColorsManager.white,fontWeight: FontWeight.bold,fontSize: 30.sp),),
                          SizedBox(height: 8.h,),
                          Center(
                            child: Container(
                              height: 240.sp,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorsManager.darkPurple,
                              ),child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('$degree',style: GoogleFonts.poppins(color: ColorsManager.white,fontSize: 70.sp),),
                                Text("$condition",style: GoogleFonts.poppins(color: ColorsManager.white,fontSize: 30.sp)),
                              ],
                            ),
                            ),
                          )
                        ],
                      ),
                    );
                  }else {
                    return Center(child: Text("Search for a City Sir",style: GoogleFonts.farro(color: ColorsManager.white,fontSize: 22.sp,fontWeight: FontWeight.w700),));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
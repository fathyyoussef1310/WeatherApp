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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchWidgetWeather(text: "Search for a City"),
              SizedBox(height: 30.h),
              BlocBuilder<WeatherCubit, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherError) {
                    return Center(child: Text("Error ❌❌", style: GoogleFonts.poppins(color: Colors.red),));
                  } else if (state is WeatherLoading) {
                    return Center(child: CircularProgressIndicator(color: Colors.yellow.shade800,),);
                  } else if (state is WeatherLoaded) {
                    final weather = state.data;
                    final city = weather['location']['name'];
                    final temp = weather['current']['temp_c'];
                    final condition = weather['current']['condition']['text'];
                    final icon = weather['current']['condition']['icon'];
                    final lastupdated = weather['current']['lastupdate'];
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("Weather in $city is", style: GoogleFonts.poppins(color: ColorsManager.white, fontSize: 20.sp, fontWeight: FontWeight.bold),),
                          SizedBox(height: 3.h,),
                          Center(
                            child: Container(
                              height: 270.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorsManager.solid1,
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("$temp°C", style: GoogleFonts.poppins(color: ColorsManager.white, fontSize: 40.sp),),
                                    Text(condition, style: GoogleFonts.afacad(color: ColorsManager.white, fontSize: 20.sp),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text("Last updated: $lastupdated",style: GoogleFonts.inter(color: ColorsManager.white,fontSize: 18,fontWeight: FontWeight.bold,),)
                        ],
                      ),
                    );
                  } else {
                    return Center(
                      child: Text("Search for a City 🌤️", style: GoogleFonts.poppins(color: ColorsManager.white, fontSize: 18.sp),),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

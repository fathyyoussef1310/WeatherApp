import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Logic/Weatherdata/WeatherState.dart';
class SearchWidgetWeather extends StatelessWidget {
  final String text;
  const SearchWidgetWeather({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: ColorsManager.white),
        borderRadius: BorderRadius.all(Radius.circular(70.r)),
      ),
      child: Row(
        children: [
          Icon(CupertinoIcons.search, color: ColorsManager.white),
          SizedBox(width: 10.w),
          Expanded(
            child: TextField(style: GoogleFonts.poppins(color: ColorsManager.white, fontSize: 19.sp,),
              onSubmitted: (value) {
                context.read<WeatherCubit>().getData(value);
              },
              cursorColor: ColorsManager.white,
              decoration: InputDecoration(
                hintText: text,
                border: InputBorder.none,
                hintStyle: GoogleFonts.poppins(color: ColorsManager.white.withOpacity(0.8), fontSize: 16.sp,),
              ),
            ),
          )
        ],
      ),
    );
  }
}

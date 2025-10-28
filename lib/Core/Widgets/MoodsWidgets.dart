import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';

class Moodswidgets extends StatelessWidget {
  const Moodswidgets({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 70.h,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: isSelected ? Colors.lightBlueAccent : ColorsManager.white,
        border: Border.all(color: isSelected ? Colors.white : Colors.lightBlueAccent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Text(text, style: GoogleFonts.abel(color: !isSelected? ColorsManager.linearGradient1.last: ColorsManager.white, fontSize: 16.sp,),
      ),
    );
  }
}

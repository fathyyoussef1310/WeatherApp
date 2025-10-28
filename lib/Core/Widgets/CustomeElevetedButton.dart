import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';

class customeElevetedButton extends StatelessWidget {
  customeElevetedButton({super.key,required this.text,required this.backgroundColor,required this.onPressed,required this.fourgroundColor});
  String text;
  Color backgroundColor;
  Color fourgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
      style:ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: REdgeInsets.symmetric(horizontal: 30.sp, vertical: 16.sp),
          textStyle: GoogleFonts.inter(color: fourgroundColor,fontWeight: FontWeight.bold,fontSize: 19.sp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.sp),
          )
      ), child: Text(text,textAlign: TextAlign.center,),
    );
  }
}
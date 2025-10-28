import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:weatherapp/Ui/Features/Home/HomeScreen.dart';
import 'package:weatherapp/Ui/Features/Map/Map.dart';
import 'package:weatherapp/Ui/Features/Mode/moodeScreen.dart';
import 'package:weatherapp/Ui/Features/profile/Profile.dart';

class Layoutscreen extends StatefulWidget {
  const Layoutscreen({super.key});

  @override
  State<Layoutscreen> createState() => _LayoutscreenState();
}

class _LayoutscreenState extends State<Layoutscreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    Homescreen(),
    Moodescreen(),
    MapSample(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: screens[selectedIndex],
      bottomNavigationBar:
      Container(
        width: double.infinity,
        margin: REdgeInsets.symmetric(horizontal: 5.w,vertical: 18.h),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsManager.black,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIcon(CupertinoIcons.cloud_sun, 0),
              _buildIcon(CupertinoIcons.heart_solid, 1),
              _buildIcon(Icons.location_on_outlined, 2),
              _buildIcon(Icons.flash_on_sharp, 3),
            ],
          ),
        ),
      ),
      backgroundColor: ColorsManager.black,
    );
  }
  Widget _buildIcon(IconData icon, int index) {
    bool isSelected = selectedIndex == index;
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(icon, color: isSelected ? ColorsManager.darkPurple : Colors.grey, size: 28.sp,),
    );
  }
}

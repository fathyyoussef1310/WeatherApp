import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:weatherapp/Core/Widgets/MoodsWidgets.dart';

class Moodescreen extends StatefulWidget {
  Moodescreen({super.key});
  final List<String> feelings = [
    'Very Happy🥰',
    'Happy🙂',
    'Love💗',
    'Not bad🙂',
    'Sad😫',
    'Angry😡',
  ];

  int Cindex = 0;

  @override
  State<Moodescreen> createState() => _MoodescreenState();
}

class _MoodescreenState extends State<Moodescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("How do you feel today? 🥰", style: TextStyle(color: ColorsManager.white, fontSize: 22.sp, fontWeight: FontWeight.bold,),),
              SizedBox(height: 20.h),
              _buildMoodList(),
              SizedBox(height: 20.h),
              Center(child: Text("Your mood: ${widget.feelings[widget.Cindex]}", style: TextStyle(color: ColorsManager.white, fontSize: 18.sp,),),),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMoodList() {
    return SizedBox(
      height: 500.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: widget.feelings.length,
        itemBuilder: (context,index){
          bool isSelected = widget.Cindex == index;
          return GestureDetector(
            onTap:(){
              setState(() {
                widget.Cindex=index;
              });
            },
            child: Moodswidgets(text: widget.feelings[index],isSelected: isSelected,),
          );
        }, separatorBuilder: (BuildContext context, int index) => SizedBox(height: 5.h,),
      ),
    );
  }
}
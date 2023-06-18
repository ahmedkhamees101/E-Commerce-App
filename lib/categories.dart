import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top: 50.h,left: 16.h,right: 348.h),
      decoration:  BoxDecoration(
          color: Colors.white
      ),
      child: Column(
        children: [
          Image.asset("assets/images/appbar_logo.png"),
          Row(
            children: [

            ],
          )
        ],
      ),
      // backgroundColor: Colors.white,
    );
  }
}

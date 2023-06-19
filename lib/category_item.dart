import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesItem extends StatelessWidget {
  CategoriesItem(
      {required this.imagePathItem,
      required this.categoryName,
      required this.itemName,
      required this.imagePathCategory});

  String imagePathCategory;
  String imagePathItem;
  String categoryName;
  String itemName;

// List item
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: 24.w, top: 16.h, bottom: 16.h, right: 155.w),
          child: Text(
            categoryName,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF06004F),
            ),
          ),
        ),
        SizedBox(
            width: 237.w,
            height: 94.h,
            child: InkWell(child: Image.asset(imagePathCategory))),
        Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 24.w,
                    right: 13.w,
                    top: 20.h,
                  ),
                  child: SizedBox(
                      width: 70.w,
                      height: 70.h,
                      child: Image.asset(imagePathItem)),
                ),
                Container(
                    padding: EdgeInsets.only(
                      left: 32.w,
                      right: 45.w,
                      top: 8.h,
                    ),
                    child: Text(
                      itemName,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF06004F),
                      ),
                    )),

              ],
            ),


       ] )
      ],
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesTabs extends StatefulWidget {
  String categoryName;
  bool isSelected;
  CategoriesTabs({ this.categoryName="", this.isSelected=true,});

  @override
  State<CategoriesTabs> createState() => _CategoriesTabsState();
}

class _CategoriesTabsState extends State<CategoriesTabs> {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 137.w,
      height: 82.h,
      padding: EdgeInsets.only(
        left: 5.w,
      ),
      decoration: BoxDecoration(
        color:
        widget.isSelected? Colors.white : Color(0xFFDBE4ED),
      ),
      child: Row(
        children: [
          widget.isSelected
              ? Container(
            width: 7.w,
            height: 72.h,
            decoration: BoxDecoration(
                color: Color(0xFF004182),
                borderRadius:
                BorderRadius.circular(20)),
          )
              : Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: 5.w,
                  top: 32.h,
                  bottom: 32.h,
                  ),
              child: Text(
                widget.categoryName,
                maxLines: 2,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF06004F),
                ),
              ),
            ),
          )
        ],
      ),
    );

}
}

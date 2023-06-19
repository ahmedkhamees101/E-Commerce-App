
import 'package:e_commerce_app/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category_tabs.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int? index=1;
  // List<Widget> tabs= [CategoriesTabs(
  //   categoryName: "Men’s Fashion",
  //   isSelected: true,
  // ),
  //   CategoriesTabs(
  //     categoryName: "Women’s Fashion",
  //     isSelected: false,
  //   ),
  //   CategoriesTabs(
  //     categoryName: "Skincare",
  //     isSelected: false,
  //   ),
  //   CategoriesTabs(
  //     categoryName: "Beauty",
  //     isSelected: false,
  //   ),
  //   CategoriesTabs(
  //     categoryName: "Headphones",
  //     isSelected: false,
  //   ),
  //   CategoriesTabs(
  //     categoryName: "Cameras",
  //     isSelected: false,
  //   ),
  //   CategoriesTabs(
  //     categoryName: "Laptops&Electronics",
  //     isSelected: false,
  //   ),
  //   CategoriesTabs(
  //     categoryName: "Baby & Toys",
  //     isSelected: false,
  //   ),];

  @override
  Widget build(BuildContext context) {
    // CategoriesTabs categoriesTabs=CategoriesTabs();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
              padding: EdgeInsets.only(top: 50.h, left: 16.w, right: 348.w),
              child: Image.asset("assets/images/appbar_logo.png")),
          SizedBox(
            height: 19.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  top: 19.11.h,
                ),
                child: SizedBox(
                  width: 348.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 16.h, bottom: 16.h, left: 56.w, right: 128.w),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: 13.h,
                              bottom: 16.h,
                              left: 23.73.w,
                              right: 11.7.w),
                          child:const ImageIcon(
                            AssetImage(
                              "assets/images/icon_search.png",
                            ),
                            color: Color(0xFF004182),
                          ),
                        ),
                        hintText: "what do you search for?",
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF004182)),
                          borderRadius: BorderRadius.circular(25),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.11.h, left: 20.w, right: 16.h),
                child: const ImageIcon(
                  AssetImage(
                    "assets/images/icon_shopping.png",
                  ),
                  color: Color(0xFF004182),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            child: Row(
                children: [
                 Column(
                  children: [
                    CategoriesTabs(
                      categoryName: "Men’s Fashion",
                      isSelected: true,
                    ),
                    CategoriesTabs(
                      categoryName: "Women’s Fashion",
                      isSelected: false,
                    ),
                    CategoriesTabs(
                      categoryName: "Skincare",
                      isSelected: false,
                    ),
                    CategoriesTabs(
                      categoryName: "Beauty",
                      isSelected: false,
                    ),
                    CategoriesTabs(
                      categoryName: "Headphones",
                      isSelected: false,
                    ),
                    CategoriesTabs(
                      categoryName: "Cameras",
                      isSelected: false,
                    ),
                    CategoriesTabs(
                      categoryName: "Laptops&Electronics",
                      isSelected: false,
                    ),
                    CategoriesTabs(
                      categoryName: "Baby & Toys",
                      isSelected: false,
                    ),
                  ],
                ),
                 CategoriesItem(imagePathItem: "assets/images/shirt.png",
                     categoryName: "Men’s Fashion",
                     itemName: "T-shirts",
                     imagePathCategory: "assets/images/men_category.png")
            ]),
          ),
        ]));
  }
}

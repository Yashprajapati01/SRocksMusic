import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/widgets/search_bar.dart';

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 350.h,
        padding:  EdgeInsets.fromLTRB(20.w, 50.h, 0, 24.h),
        // Adjust for status bar & spacing
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFA90140), // Top color
              Color(0xFF550120), // End (dark purple)
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: CustomSearchBar()),
                Padding(
                  padding:  EdgeInsets.fromLTRB(17.w, 5.h, 20.w, 5.h),
                  child: CircleAvatar(
                    radius: 17.r,
                    child: SvgPicture.asset(
                      'assets/icons/profileIcon.svg',
                      width: 25.w,
                      height: 22.h,
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 36.h),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Claim your',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Syne',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Free Demo',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lobster',
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'for custom Music Production',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Syne',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                    ),
                    child: Text(
                      'Book now',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Syne',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

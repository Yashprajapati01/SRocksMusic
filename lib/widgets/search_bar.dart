import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: double.infinity,
      height: 44.h,
      decoration: BoxDecoration(
        color: Color.fromRGBO(47, 47, 57, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(2.5.w),
            child: SvgPicture.asset(
              'assets/icons/searchicon.svg',
              height: 15.h,
              width: 15.w,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                // contentPadding: EdgeInsets.symmetric(vertical: 11),
                hintText: 'Search “Punjabi Lyrics”',
                hintStyle: TextStyle(
                  fontFamily: 'Syne',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(97, 97, 107, 1),
                  fontSize: 14.sp,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1.w,
            height: 21.h,
            color: Color.fromRGBO(69, 69, 79, 1),
          ),
          SizedBox(width: 10.w),
          Icon(Icons.mic, color: Colors.white),
        ],
      ),
    );
  }
}

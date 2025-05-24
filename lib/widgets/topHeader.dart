import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'gradientBg.dart';

class Topheader extends StatelessWidget {
  const Topheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GradientBackground(),
          ),
          Positioned(
            left: -27.w,
            top: 220.h,
            child: Image.asset(
              'assets/images/coverArt.png',
              width: 120.w,
              height: 120.h,
            ),
          ),
          Positioned(
            right: -35.w,
            top: 210.h,
            child: Image.asset(
              'assets/images/piano.png',
              width: 120.w,
              height: 120.h,
            ),
          ),
        ]
    );
  }
}

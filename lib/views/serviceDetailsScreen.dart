import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String title;

  const ServiceDetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 23, 28, 1),
      body: SafeArea(
        child: Center(
          child: Text(
            'You tapped on: $title',
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.white,
              fontFamily: 'Syne',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
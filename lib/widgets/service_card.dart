import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/service_models.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;

  const ServiceTile({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(44, 45, 49, 1), width: 1.w),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Image.asset(
                  service.backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),

              // Semi-transparent overlay with rounded corners
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(32, 33, 38, 0.85),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
              ),

              // Content
              Container(
                height: 70.h,
                padding: EdgeInsets.all(12.w),
                child: Row(
                  children: [
                    Image.asset(service.icon, fit: BoxFit.contain),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            service.title,
                            style: TextStyle(
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            service.description,
                            style: TextStyle(
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_right, color: Colors.white, size: 33),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

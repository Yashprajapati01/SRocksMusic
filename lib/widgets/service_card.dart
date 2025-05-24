// import 'package:flutter/material.dart';
//
// import '../models/service_models.dart';
//
// class ServiceCard extends StatelessWidget {
//   final ServiceModel service;
//
//   const ServiceCard({Key? key, required this.service}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(service.icon, width: 64, height: 64),
//             const SizedBox(height: 8),
//             Text(
//               service.title,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 4),
//             Text(
//               service.description,
//               style: const TextStyle(fontSize: 12),
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/service_models.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;

  const ServiceTile({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Color.fromRGBO(44, 45, 49, 1), width: 1.w),
        image: DecorationImage(
          image: AssetImage(service.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Color.fromRGBO(32, 33, 38, 0.85),
            ),
          ),
          // Foreground content
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Row(
              children: [
                // Icon
                Image.asset(service.icon, fit: BoxFit.contain),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Container(
                //     width: 48,
                //     height: 48,
                //     color: Color.fromRGBO(47, 47, 57, 1),
                //     child: Padding(
                //       padding: const EdgeInsets.all(6.0),
                //       child: Image.asset(
                //         service.icon,
                //         fit: BoxFit.contain,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(width: 10.w),
                // Title and subtitle
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
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        service.description,
                        style: TextStyle(
                          fontFamily: 'Syne',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Colors.white,
                        ),
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
    );
  }
}

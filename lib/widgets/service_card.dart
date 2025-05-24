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
import '../models/service_models.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;

  const ServiceTile({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromRGBO(44, 45, 49, 1),width: 1),
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
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(32, 33, 38, 0.85)
            ),
          ),
          // Foreground content
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // Icon
                Image.asset(
                  service.icon,
                  fit: BoxFit.contain,
                ),
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
                const SizedBox(width: 10),
                // Title and subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        service.title,
                        style: const TextStyle(
                          fontFamily: 'Syne',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        service.description,
                        style: const TextStyle(
                          fontFamily: 'Syne',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
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

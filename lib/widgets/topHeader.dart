import 'package:flutter/cupertino.dart';
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
            left: -27,
            top: 220,
            child: Image.asset(
              'assets/images/coverArt.png',
              width: 120,
              height: 120,
            ),
          ),
          Positioned(
            right: -35,
            top: 210,
            child: Image.asset(
              'assets/images/piano.png',
              width: 120,
              height: 120,
            ),
          ),
        ]
    );
  }
}

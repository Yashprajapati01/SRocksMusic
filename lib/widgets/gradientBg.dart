import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/widgets/search_bar.dart';

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 350,
        padding: const EdgeInsets.fromLTRB(20, 50, 0, 24),
        // Adjust for status bar & spacing
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFA90140), // Top color
              Color(0xFF550120), // End (dark purple)
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: CustomSearchBar()),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 5, 20, 5),
                  child: CircleAvatar(
                    radius: 17,
                    child: SvgPicture.asset(
                      'assets/icons/profileIcon.svg',
                      width: 25,
                      height: 22,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36),
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
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Free Demo',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lobster',
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'for custom Music Production',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Syne',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Book now',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Syne',
                        fontSize: 13,
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      height: 44,
      decoration: BoxDecoration(
        color: Color.fromRGBO(47, 47, 57, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: SvgPicture.asset(
              'assets/icons/searchicon.svg',
              height: 15,
              width: 15,
            ),
          ),
          SizedBox(width: 10),
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
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 21,
            color: Color.fromRGBO(69, 69, 79, 1),
          ),
          SizedBox(width: 10),
          Icon(Icons.mic, color: Colors.white),
        ],
      ),
    );
  }
}

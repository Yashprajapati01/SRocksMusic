import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<_NavItem> navItems = [
      _NavItem(icon: 'assets/icons/srock.png', label: 'Home'),
      _NavItem(icon: 'assets/icons/news.svg', label: 'News'),
      _NavItem(icon: 'assets/icons/Music.svg', label: 'TrackBox'),
      _NavItem(icon: 'assets/icons/projects.svg', label: 'Projects'),
    ];

    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(29, 28, 34, 1),
        border: Border(
          top: BorderSide(
            color: const Color.fromRGBO(44, 45, 49, 1),
            width: 1,
          ),
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navItems.asMap().entries.map((entry) {
          int index = entry.key;
          _NavItem item = entry.value;

          bool isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onItemTapped(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 7,
                  width: 14,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Column(
                    children: [
                      // Icon
                      isSelected
                          ? item.icon.toLowerCase().endsWith('.svg')
                          ? SvgPicture.asset(
                        item.icon,
                        height: 24,
                        color: Colors.white,
                      )
                          : Image.asset(
                        item.icon,
                        height: 24,
                        color: Colors.white,
                      )
                          : item.icon.toLowerCase().endsWith('.svg')
                          ? SvgPicture.asset(
                        item.icon,
                        height: 24,
                        color: Colors.grey,
                      )
                          : Image.asset(
                        item.icon,
                        height: 24,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 4),
                      // Label
                      Text(
                        item.label,
                        style: TextStyle(
                          fontFamily: 'Syne',
                          fontSize: 11,
                          color: isSelected ? Colors.white : Color.fromRGBO(97, 97, 107, 1),
                          fontWeight: isSelected ? FontWeight.w400 : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _NavItem {
  final String icon;
  final String label;

  _NavItem({required this.icon, required this.label});
}

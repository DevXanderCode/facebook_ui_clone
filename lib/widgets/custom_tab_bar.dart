import 'package:facebook_clone_ui/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 3.0,
            color: Palette.facebookBlue,
          ),
        ),
      ),
      tabs: icons
          .map(
            (e) => Tab(
              icon: Icon(e),
            ),
          )
          .toList(),
      onTap: onTap,
    );
  }
}

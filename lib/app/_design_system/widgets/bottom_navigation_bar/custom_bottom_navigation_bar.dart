import 'package:flutter/material.dart';

import '../../consts/app_colors_const.dart';
import '../../consts/app_icons_const.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;
  final Function(int)? onTap;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIconsConst.headerMenu,
              height: 20,
              color: AppColorsConst.strongGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIconsConst.add,
              height: 20,
              color: AppColorsConst.strongGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIconsConst.account,
              height: 20,
              color: AppColorsConst.strongGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIconsConst.notification,
              height: 20,
              color: AppColorsConst.strongGray,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

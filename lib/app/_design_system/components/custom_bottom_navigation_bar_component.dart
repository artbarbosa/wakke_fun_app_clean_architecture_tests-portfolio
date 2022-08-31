import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/app_colors_const.dart';
import '../consts/app_svgs_const.dart';

class CustomBottomNavigationBarComponent extends StatefulWidget {
  const CustomBottomNavigationBarComponent({
    Key? key,
    this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;
  final Function(int)? onTap;

  @override
  State<CustomBottomNavigationBarComponent> createState() =>
      _CustomBottomNavigationBarComponentState();
}

class _CustomBottomNavigationBarComponentState
    extends State<CustomBottomNavigationBarComponent> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 4,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomNavigationBar(
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgsConst.calendar,
                  height: 20,
                  color: AppColorsConst.strongGray,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgsConst.chat,
                  height: 20,
                  color: AppColorsConst.strongGray,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgsConst.chat,
                  height: 20,
                  color: AppColorsConst.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgsConst.landscape,
                  height: 20,
                  color: AppColorsConst.strongGray,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgsConst.avatar,
                  height: 20,
                  color: AppColorsConst.strongGray,
                ),
                label: '',
              ),
            ]),
      ),
    );
  }
}

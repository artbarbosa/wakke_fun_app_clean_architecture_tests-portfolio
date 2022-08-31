import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/app_colors_const.dart';

class CustomFastAcessComponent extends StatelessWidget {
  final String icon;
  final String title;
  const CustomFastAcessComponent(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              icon,
              height: 40,
              color: AppColorsConst.theme,
            ),
            Text(title,
                style:
                    const TextStyle(fontSize: 12, color: AppColorsConst.theme)),
          ],
        ),
      ),
    );
  }
}

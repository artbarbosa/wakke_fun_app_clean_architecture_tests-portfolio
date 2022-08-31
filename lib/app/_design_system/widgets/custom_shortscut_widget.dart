import 'package:flutter/material.dart';

import '../consts/app_colors_const.dart';

class CustomShortcutsWidget extends StatelessWidget {
  final String image;
  final String title;

  const CustomShortcutsWidget(
      {super.key, required this.image, required this.title});

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
            Image.asset(
              image,
              height: 50,
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

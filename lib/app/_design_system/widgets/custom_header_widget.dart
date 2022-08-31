import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String title;
  const CustomHeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Title(
        color: AppColorsConst.theme,
        child: Text(
          title,
          style: const TextStyle(
            color: AppColorsConst.theme,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

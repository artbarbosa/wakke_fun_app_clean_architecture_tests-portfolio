import 'package:flutter/cupertino.dart';

import '../consts/app_colors_const.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});
  final String message = 'Olá, ';
  final String name = 'Laura';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          message,
          style: const TextStyle(
            fontSize: 40,
            color: AppColorsConst.strongGray,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
              fontSize: 40,
              color: AppColorsConst.strongGray,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}

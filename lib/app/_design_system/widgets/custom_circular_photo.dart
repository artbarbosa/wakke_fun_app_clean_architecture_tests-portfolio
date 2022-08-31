import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_images_const.dart';

class CustomCircularPhoto extends StatelessWidget {
  final String photo;
  const CustomCircularPhoto({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(photo, fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 27,
          left: 5,
          height: 30,
          width: 30,
          child: Image.asset(
            AppImagesConst.startElvelOne,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

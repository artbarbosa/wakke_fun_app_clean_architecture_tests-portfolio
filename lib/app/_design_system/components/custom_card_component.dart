import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_images_const.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_svgs_const.dart';

import '../widgets/custom_card_widget.dart';
import '../widgets/custom_circular_photo.dart';

class MuralContent extends StatelessWidget {
  const MuralContent({super.key});

  onPressed() {}
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
        child: Column(
      children: [
        ListTile(
          horizontalTitleGap: 10,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 0,
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              CustomCircularPhoto(
                photo: AppImagesConst.camila,
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
          ),
          title: const Text('claudia',
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: const Text(
            '20/07/2022 08:40',
            style: TextStyle(fontSize: 12, color: AppColorsConst.black),
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(AppImagesConst.slideOne),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SvgPicture.asset(
                      AppSvgsConst.avatar,
                      height: 20,
                    ),
                  ),
                  const Text('123')
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      AppSvgsConst.heart,
                      height: 20,
                    ),
                  ),
                  SvgPicture.asset(
                    AppSvgsConst.favorite,
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: TextStyle(
              fontSize: 14.0,
              color: AppColorsConst.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'claudia ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      'Conheça mulheres que fizeram história na tecnologia #mulheres #tecnologia #historia'),
            ],
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_icons_const.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_images_const.dart';

class CustomAppBarWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBarWidget({
    required this.scaffoldKey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: SizedBox(
        width: 120,
        child: Image.asset(
          AppImagesConst.logoWakkeRoxo,
          width: 120,
        ),
      ),
      leading: IconButton(
        splashRadius: 20,
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: Image.asset(
          AppIconsConst.headerMenu,
          height: 20,
        ),
      ),
      actions: [
        SvgPicture.asset(
          AppIconsConst.fixed,
          height: 22,
          color: AppColorsConst.primary,
        ),
        const SizedBox(width: 5),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppIconsConst.search,
            height: 22,
          ),
        )
      ],
    );
  }
}

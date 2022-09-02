import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_images_const.dart';

import '../../../../../core/shared/ui/controllers/custom_bottom_navigation_bar_controller.dart';
import '../controllers/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final controller = GetIt.I.get<SplashController>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    final controllerPage = GetIt.I.get<CustomBottomNavigationBarController>();
    controllerPage.pageController =
        PageController(initialPage: 2, keepPage: true);
    return Scaffold(
      backgroundColor: AppColorsConst.primary,
      body: Center(
        child: Image.asset(
          AppImagesConst.logoWakkeWhite,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
      ),
    );
  }
}

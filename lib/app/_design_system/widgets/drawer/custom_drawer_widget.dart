import 'package:flutter/material.dart';

import '../../consts/app_colors_const.dart';
import '../../consts/app_images_const.dart';
import '../../text_styles/text_styles_const.dart';
import '../circle_avatar/custom_circular_photo.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key, required this.photo}) : super(key: key);

  final String photo;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColorsConst.theme.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AppImagesConst.logoWakkeWhite,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: CustomCircularPhoto(
                  isNetwork: false,
                  photo: photo,
                  borderColor: '#9E9E9E',
                  width: 108,
                  height: 120,
                  widthBorder: 2.5,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Feed Fun',
                        style: TextStylesConst.drawerText,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Times',
                        style: TextStylesConst.drawerText,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Notificações',
                        style: TextStylesConst.drawerText,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Conexões',
                        style: TextStylesConst.drawerText,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Minha Conta',
                        style: TextStylesConst.drawerText,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Plano',
                        style: TextStylesConst.drawerText,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Ajuda',
                        style: TextStylesConst.drawerText,
                      ),
                      const Spacer(),
                      Text(
                        'Sair',
                        style: TextStylesConst.drawerText,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

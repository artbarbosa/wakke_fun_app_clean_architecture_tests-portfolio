import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBarWidget(
    this.scaffoldKey, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: SizedBox(
        width: 100,
        child: Image.asset(
          'AppImagesConst.appBarTitle',
        ),
      ),
      leading: IconButton(
        splashRadius: 20,
        onPressed: () {
          Future.delayed(const Duration(milliseconds: 100), () {
            scaffoldKey.currentState!.openDrawer();
          });
        },
        icon: SvgPicture.asset(
          'AppImagesConst.appBarMenu',
          height: 16,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: SvgPicture.asset(
            'AppImagesConst.appBarSearch',
            height: 18,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_logos_const.dart';

class CustomFloatingActionButtonWidget extends StatelessWidget {
  const CustomFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () => {Navigator.pushNamed(context, 'AppRoutesConst.HOME')},
        elevation: 0,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage(AppLogosConst.wakkeManager),
        ),
      ),
    );
  }
}

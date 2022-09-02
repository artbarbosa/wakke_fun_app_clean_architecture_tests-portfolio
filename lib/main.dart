import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';
import 'package:wakke_fun_app/app/core/shared/inject/inject.dart';

import 'app/app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColorsConst.primary,
    ),
  );
  Inject.initialize();

  runApp(const AppWidget());
}

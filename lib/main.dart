import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/core/shared/inject/inject.dart';

import 'app/app_widget.dart';

void main() {
  Inject.initialize();

  runApp(const AppWidget());
}

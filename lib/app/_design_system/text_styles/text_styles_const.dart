import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';

class TextStylesConst {
  // Home
  static final tittleCard = GoogleFonts.montserrat(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static final descriptionCard = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static final tittleCardHorizontal = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final descriptionCardHorizontal = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static final numberCardHorizontal = GoogleFonts.roboto(
    fontSize: 100,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final numberCardHorizontalForeground = GoogleFonts.roboto(
    fontSize: 102,
    fontWeight: FontWeight.bold,
    color: AppColorsConst.primary,
  );

  static final tittleFeed = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColorsConst.primary,
  );

  static final drawerText = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

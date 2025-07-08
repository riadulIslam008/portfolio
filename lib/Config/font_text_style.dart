import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/Config/color_code.dart';

class FontTextStyle {

  //Button
  static final TextStyle textfont = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: CustomeColor.primaryColor,
    ),
  );

  // Header
  static final TextStyle headerStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
      color: CustomeColor.headerTextColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  );
}

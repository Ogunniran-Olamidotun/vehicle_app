import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color(0XFF3532D7);

class Styles {
  static Color primaryColor = primary;
  static Color labelbackground = Color(0XFFB0AFFE);
  static Color backgroundcolor = Color(0XFFFDFDFD);
  static Color textcolor = Color(0XFF2A2A2A);
  static Color placeholderColor = Color(0XFF98A1B3);

  static TextStyle title = GoogleFonts.montserrat(
    fontSize: 18,
    color: primaryColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle subtitle = GoogleFonts.montserrat(
    fontSize: 14,
    color: textcolor,
    fontWeight: FontWeight.bold
  );
  static TextStyle header = GoogleFonts.montserrat(
    fontSize: 16,
    color: textcolor,
    fontWeight: FontWeight.normal
  );
  static TextStyle smalltext = GoogleFonts.montserrat(
    fontSize: 12,
    color: textcolor,
    fontWeight: FontWeight.normal
  );

}
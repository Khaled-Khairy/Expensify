import 'package:expensify/core/helpers/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) => ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: isEnglish(context)? GoogleFonts.robotoTextTheme() : GoogleFonts.cairoTextTheme(),
);

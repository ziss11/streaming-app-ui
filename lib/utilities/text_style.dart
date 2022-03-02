import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streaming_app/utilities/colors.dart';

import 'constants.dart';

final kHeading5 = GoogleFonts.poppins(
  color: secodaryColor,
  fontSize: 30,
  fontWeight: semibold,
);
final kHeading6 = GoogleFonts.poppins(
  color: secodaryColor,
  fontSize: 20,
  fontWeight: semibold,
);
final kTitle = GoogleFonts.poppins(
  color: secodaryColor,
  fontSize: 16,
  fontWeight: bold,
);
final kSubtitle = GoogleFonts.poppins(
  color: greyColor,
  fontWeight: regular,
);
final kTextTheme = TextTheme(
  headline5: kHeading5,
  headline6: kHeading6,
  titleMedium: kTitle,
  subtitle1: kSubtitle,
);

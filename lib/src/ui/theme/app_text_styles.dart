import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';

class AppTextStyles {
  static final TextStyle textTitle1 = GoogleFonts.figtree(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static final TextStyle textBody = GoogleFonts.figtree(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textColor,
  );

  static final TextStyle textButtonLink = GoogleFonts.figtree(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static final TextStyle textBodyLight = GoogleFonts.figtree(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textColorLight,
  );

  static final TextStyle textButtonOutline = GoogleFonts.figtree(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );

  static final TextStyle textButtonLinkUnderline = GoogleFonts.figtree(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
    decoration: TextDecoration.underline,
  );
}

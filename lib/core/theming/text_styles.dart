import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_attendence_task/core/theming/colors.dart';

abstract class AppTextStyles {
  static TextStyle textStyle11SemiLightBlueNormal = GoogleFonts.poppins(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColorStyles.kSemiLightBlue,
  );

  static TextStyle textStyle12PrimaryLight = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: AppColorStyles.kSemiBlueColor.withOpacity(0.6),
  );
  static TextStyle textStyle12SemiBlueNormal = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColorStyles.kSemiBlueColor,
  );
}

import 'package:e_commers_app/utils/colors.dart';
import 'package:flutter/material.dart';

class AppStyle {
  //dark text

  final TextStyle appTitle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w900, color: AppColors().mainBlack);

  final TextStyle subTitle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: AppColors().mainBlack);

  final TextStyle normalText = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: AppColors().mainBlack);

  // light text

  final TextStyle appTitleLight = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w900, color: AppColors().mainWhite);

  final TextStyle subTitleLight = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, color: AppColors().mainWhite);

  final TextStyle normalTextLight = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: AppColors().mainWhite);
}

import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? shadowColor;
  final String text;
  const AppButtons({
    super.key,
    this.width,
    this.height,
    this.shadowColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 200,
      height: height ?? 60,
      decoration: BoxDecoration(
        color: AppColors().mainWhite,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 3),
            color: shadowColor ?? AppColors().mainBlack,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyle().normalText,
        ),
      ),
    );
  }
}

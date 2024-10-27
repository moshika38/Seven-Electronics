import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String mainTitle;
  final String? subTitle;
  const Headline({super.key, required this.mainTitle, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainTitle,
          style: AppStyle().subTitle,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            subTitle??"",
            style: AppStyle().subTitle.copyWith(
                  fontSize: 15,
                  color: AppColors().ashColor,
                ),
          ),
        ),
      ],
    );
  }
}

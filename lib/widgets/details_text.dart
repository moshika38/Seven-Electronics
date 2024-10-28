import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const DetailsText({super.key, required this.textOne, required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textOne,
            style: AppStyle().normalText,
          ),
          Text(
            textTwo,
            style: AppStyle().normalText,
          )
        ],
      ),
    );
  }
}

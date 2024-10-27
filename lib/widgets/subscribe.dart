import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({super.key});

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stay updated on new arrivals and exclusive offers! Subscribe now to get the latest item details right in your inbox.",
                style: AppStyle().normalText,
              ),
              15.ph,
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    colors: [
                      AppColors().mainBlue,
                      AppColors().secBlue,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Subscribe  ",
                    style: AppStyle().normalTextLight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const CartBody({super.key, required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                width: 80,
                height: 80,
              ),
              10.pw,
              SizedBox(
                width: 60.cmpw(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: AppStyle().normalText),
                    Text(
                      "$price USD",
                      style: AppStyle().normalText.copyWith(
                            color: AppColors().secBlue,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

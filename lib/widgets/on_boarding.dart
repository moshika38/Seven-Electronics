import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  final VoidCallback clickBtn;
  const OnBoarding({
    super.key,
    required this.clickBtn,
  });

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          16.mph(context),
          Text(
            "Welcome to\n Seven Electronic Mobile",
            style: AppStyle().appTitleLight,
            textAlign: TextAlign.center,
          ),
          20.ph,
          SizedBox(
            width: 72.cmpw(context),
            child: Text(
              "Step into a store that brings you the most advanced electronics, all designed to make your life easier and more connected",
              style: AppStyle().normalTextLight,
              textAlign: TextAlign.center,
            ),
          ),
          6.mph(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Continue",
                style: AppStyle().subTitleLight.copyWith(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              40.pw,
              GestureDetector(
                onTap: widget.clickBtn,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors().secWhite,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors().secWhite,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

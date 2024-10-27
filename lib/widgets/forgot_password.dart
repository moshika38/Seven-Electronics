import 'package:coustom_flutter_widgets/input_feild.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  final PageController pageController;
  const ForgotPassword({super.key, required this.pageController});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController forgot = TextEditingController();

  int isCount = 0;

  void reSend() {
     
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            3.mph(context),
            Text(
              "Forgot Password",
              style: AppStyle().appTitleLight,
            ),
            4.mph(context),
            CoustomInputWidget(
              controller: forgot,
              borderColor: AppColors().secWhite,
              backGroundColor: AppColors().secWhite,
              borderRadius: 100,
              hintText: "Enter your email",
              heigth: 15,
            ),
            3.mph(context),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors().secWhite,
              ),
              child: Center(
                child: Text(
                  "Send",
                  style: AppStyle().normalText,
                ),
              ),
            ),
            12.mph(context),
            TextButton(
              onPressed: () {
                reSend();
              },
              child: Text(
                "Re-Send ($isCount)",
                style: AppStyle().normalTextLight,
              ),
            ),
            2.mph(context),
            TextButton(
              onPressed: () {
                widget.pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(
                "Back",
                style: AppStyle().normalTextLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

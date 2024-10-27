import 'package:coustom_flutter_widgets/input_feild.dart';
import 'package:coustom_flutter_widgets/page_animation.dart';
import 'package:coustom_flutter_widgets/password_input.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/pages/home_page.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class SingIN extends StatefulWidget {
  final PageController pageController;
  final VoidCallback clickBTN;
  const SingIN(
      {super.key, required this.pageController, required this.clickBTN});

  @override
  State<SingIN> createState() => _SingINState();
}

class _SingINState extends State<SingIN> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            3.mph(context),
            Center(
              child: Text(
                "Welcome Back",
                style: AppStyle().appTitleLight,
              ),
            ),
            3.mph(context),
            CoustomInputWidget(
              controller: email,
              borderColor: AppColors().secWhite,
              backGroundColor: AppColors().secWhite,
              borderRadius: 100,
              hintText: "Email",
              heigth: 15,
            ),
            2.mph(context),
            CoustomPasswordInput(
              controller: email,
              borderColor: AppColors().secWhite,
              backGroundColor: AppColors().secWhite,
              borderRadius: 100,
              hintText: "Password",
              heigth: 15,
            ),
            5.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: widget.clickBTN,
                  child: Text(
                    "Forgot password?",
                    style: AppStyle().normalTextLight,
                  ),
                ),
              ],
            ),
            5.ph,
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CoustomAnimation.pageAnimation(
                    HomePage(),
                    Offset(1.0, 0.0),
                    Offset.zero,
                    Curves.easeInOut,
                    500,
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors().secWhite,
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: AppStyle().normalText,
                  ),
                ),
              ),
            ),
            // Social login section
            5.mph(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Google login button
                Container(
                  width: 40.cmpw(context),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors().secWhite,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/src/google.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      10.pw,
                      Text(
                        "Google",
                        style: AppStyle().normalText,
                      ),
                    ],
                  ),
                ),
                // Facebook login button
                Container(
                  width: 40.cmpw(context),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors().secWhite,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/src/facebook.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      3.pw,
                      Text(
                        "Facebook",
                        style: AppStyle().normalText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            50.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: AppStyle().normalTextLight,
                ),
                TextButton(
                  onPressed: () {
                    widget.pageController.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: AppStyle().normalTextLight,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

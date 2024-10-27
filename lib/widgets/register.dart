import 'package:coustom_flutter_widgets/checkbox.dart';
import 'package:coustom_flutter_widgets/input_feild.dart';
import 'package:coustom_flutter_widgets/password_input.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final PageController pageController;
  const Register({super.key, required this.pageController});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isCheked = false;
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.mph(context),
            Center(
              child: Text(
                "Create Your Account",
                style: AppStyle().appTitleLight,
              ),
            ),
            2.mph(context),
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
            2.mph(context),
            CoustomPasswordInput(
              controller: email,
              borderColor: AppColors().secWhite,
              backGroundColor: AppColors().secWhite,
              borderRadius: 100,
              hintText: "Conform password",
              heigth: 15,
            ),
            15.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CoustomCheckboxWidget(
                  onChanged: (value) {
                    setState(() {
                      isCheked = value;
                    });
                  },
                  borderColor: AppColors().secWhite,
                  iconColor: AppColors().mainBlue,
                ),
                10.pw,
                Text(
                  "Agree with T&C",
                  style: AppStyle().normalTextLight,
                ),
              ],
            ),
            15.ph,
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors().secWhite,
              ),
              child: Center(
                child: Text(
                  "Sing Up",
                  style: AppStyle().normalText,
                ),
              ),
            ),

            // social login section
            3.mph(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alredy have an account ?",
                  style: AppStyle().normalTextLight, 
                ),
                TextButton(
                  onPressed: () {
                    widget.pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Sing In",
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

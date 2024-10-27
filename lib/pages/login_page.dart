import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/widgets/forgot_password.dart';
import 'package:e_commers_app/widgets/on_boarding.dart';
import 'package:e_commers_app/widgets/register.dart';
import 'package:e_commers_app/widgets/singin.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoad = false;
  final PageController _pageController = PageController();
  int pageNum = 0;

  Future<void> fetchData() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      setState(() {
        isLoad = true;
      });
    } catch (e) {
      print("Error fetching data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            2.mph(context),
            SizedBox(
              width: 150,
              height: 150,
              child: Lottie.asset(
                "assets/src/sustainable-travel.mp4.lottie.json",
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              height: isLoad ? 65.cmph(context) : 0.cmph(context),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors().secBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      pageNum = index;
                    });
                  },
                  children: [
                    OnBoarding(
                      clickBtn: () {
                        _pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    SingIN(
                      pageController: _pageController,
                      clickBTN: () {
                        _pageController.animateToPage(
                          3,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    Register(pageController: _pageController),
                    ForgotPassword(pageController: _pageController),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

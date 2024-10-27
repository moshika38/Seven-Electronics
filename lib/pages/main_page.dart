import 'dart:async';
import 'package:coustom_flutter_widgets/input_feild.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController search = TextEditingController();
  PageController pages = PageController();
  int isIndex = 0;
  Timer? timer;

  List<Widget> image = [
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/src/img1.jpg",
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/src/img2.jpg",
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/src/img3.jpg",
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 3), (Timer t) {
      setState(() {
        isIndex = (isIndex + 1) % image.length;
        pages.jumpToPage(isIndex);
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pages.dispose();
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CoustomInputWidget(
                controller: search,
                suffixIcon: Icons.search,
                borderRadius: 100,
                hintText: "Search...",
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: pages,
                  children: image,
                ),
              ),
              SizedBox(height: 10),
              SmoothPageIndicator(
                controller: pages,
                count: image.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categorys",
                    style: AppStyle().subTitle,
                  ),
                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors().secWhite,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors().secBlack,
                          offset: Offset(0.5, 0.5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

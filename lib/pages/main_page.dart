import 'dart:async';
import 'package:coustom_flutter_widgets/input_feild.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/widgets/cate_card.dart';
import 'package:e_commers_app/widgets/hedline.dart';
import 'package:e_commers_app/widgets/cyber_monday_card.dart';
import 'package:e_commers_app/widgets/subscribe.dart';
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
        "assets/src/im1.jpg",
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    ),
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
        "assets/src/im2.jpeg",
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
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: pages,
                  children: image,
                ),
              ),
              const SizedBox(height: 10),
              SmoothPageIndicator(
                controller: pages,
                count: image.length,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
              10.ph,
              const Headline(
                mainTitle: "Categories",
              ),
              10.ph,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CateCard(
                    image: "assets/src/mobile.png",
                  ),
                  CateCard(
                    image: "assets/src/computer.png",
                  ),
                  CateCard(
                    image: "assets/src/home.png",
                  ),
                  CateCard(
                    image: "assets/src/school.png",
                  ),
                ],
              ),
              10.ph,
              const Headline(
                mainTitle: "Cyber Monday",
                subTitle: "See all",
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 16 / 14,
                  ),
                  itemBuilder: (context, index) {
                    return const CyberMondayCard(
                      image: "assets/src/cooker.png",
                      title: "Rice Cooker",
                      rate: 4,
                      discount: "30",
                    );
                  },
                ),
              ),
              10.ph,
              const Headline(
                mainTitle: "New User Offers",
                subTitle: "See all",
              ), 

              // 10.ph,
              SizedBox(
                height: 200,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 16 / 14,
                  ),
                  itemBuilder: (context, index) {
                    return const CyberMondayCard(
                      image: "assets/src/cooker.png",
                      title: "Rice Cooker",
                      rate: 4,
                    );
                  },
                ),
              ),

              15.ph,
              const Headline(
                mainTitle: "Stay in the Loop",
              ),
              const Subscribe(),
            ], // page end
          ),
        ),
      ),
    );
  }
}

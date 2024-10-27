import 'dart:async';
import 'package:coustom_flutter_widgets/input_feild.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
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
              Headline(
                mainTitle: "Categorys",
              ),
              15.ph,
              Row(
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
              25.ph,
              Headline(
                mainTitle: "Cyber Monday",
                subTitle: "See all",
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 16 / 14,
                  ),
                  itemBuilder: (context, index) {
                    return CyberMondayCard(
                      image: "assets/src/cooker.png",
                      title: "Rice Cooker",
                      rate: 4,
                      discount: "30",
                    );
                  },
                ),
              ),
              10.ph,
              Headline(
                mainTitle: "New User Offers",
                subTitle: "See all",
              ),
              // 10.ph,
              SizedBox(
                height: 200,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 16 / 14,
                  ),
                  itemBuilder: (context, index) {
                    return CyberMondayCard(
                      image: "assets/src/cooker.png",
                      title: "Rice Cooker",
                      rate: 4,
                    );
                  },
                ),
              ),

              20.ph,
              Subscribe(),
            ], // page end
          ),
        ),
      ),
    );
  }
}

import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/kWidgets/ratings_bar.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SheetBody extends StatefulWidget {
  const SheetBody({
    super.key,
  });

  @override
  State<SheetBody> createState() => _SheetBodyState();
}

class _SheetBodyState extends State<SheetBody> {
  int isQty = 1;
  PageController pages = PageController();
  List<Widget> image = [
    ImageDecoration(imageURL: "assets/src/cooker.png"),
    ImageDecoration(imageURL: "assets/src/blender.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Card(
                            child: Icon(Icons.close),
                          ),
                        ),
                      ),
                    ],
                  ),
                  20.ph,
                  SizedBox(
                    height: 200,
                    child: PageView(
                      controller: pages,
                      children: image,
                    ),
                  ),
                  10.ph,
                  Center(
                    child: SmoothPageIndicator(
                      controller: pages,
                      count: image.length,
                      effect: const WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                  ),
                  30.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rise Cooker",
                        style: AppStyle().subTitle,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (isQty != 1) {
                                    isQty -= 1;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove)),
                          Text(
                            isQty.toString(),
                            style: AppStyle().subTitle,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isQty += 1;
                                });
                              },
                              icon: Icon(Icons.add)),
                        ],
                      )
                    ],
                  ),
                  15.ph,
                  Text(
                    "This is chinese original rice cooker with one year warranty. 2-3 h cooking time . rice and any other  can cook with that . easy to use . low power",
                    style: AppStyle().normalText.copyWith(
                          color: AppColors().secTextColor,
                        ),
                  ),
                  20.ph,
                  Text(
                    "Rating & Reviews",
                    style: AppStyle().subTitle,
                  ),
                  10.ph,
                  CoustomRatingsBar(
                    rateIng: 3,
                    size: 30,
                  ),
                  30.ph,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 16 / 9,
                    ),
                    itemBuilder: (context, index) {
                      return ReviewText(
                        name: "Jone Doe",
                        discription:
                            "Butifull and vary usefull . highly recomended for all user , fast delevary ,googd servise",
                      );
                    },
                  ),
                ], //end
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 70.cmpw(context),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors().mainBlue,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors().mainBlack,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Place Order 30\$",
                    style: AppStyle().normalTextLight,
                  ),
                ),
              ),
              10.pw,
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors().mainBlue,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors().mainBlack,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: AppColors().mainWhite,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReviewText extends StatelessWidget {
  final String name;
  final String discription;
  const ReviewText({super.key, required this.name, required this.discription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: AppStyle().normalText.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
          ),
          8.ph,
          Row(
            children: [
              10.pw,
              SizedBox(
                width: 80.cmpw(context),
                child: Text(
                  discription,
                  style: AppStyle().normalText.copyWith(
                        color: AppColors().secTextColor,
                      ),
                ),
              ),
            ],
          ),
          20.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "was this review helpful ?",
                style: AppStyle().normalText.copyWith(
                      color: AppColors().mainTextColor,
                    ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Yes",
                      style: AppStyle().normalText.copyWith(
                            color: AppColors().mainTextColor,
                          ),
                    ),
                  ),
                  10.pw,
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "No",
                      style: AppStyle().normalText.copyWith(
                            color: AppColors().mainTextColor,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageDecoration extends StatelessWidget {
  final String imageURL;
  const ImageDecoration({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imageURL,
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}

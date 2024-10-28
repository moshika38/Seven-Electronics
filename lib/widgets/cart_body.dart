import 'package:coustom_flutter_widgets/popup_windwo.dart';
import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class CartBody extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  const CartBody(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  @override
  State<CartBody> createState() => _CartBodyState();
}

int isQty = 1;

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        CoustomPopupWindow(
          content: Text(
            "Remove item from cart ?",
            style: AppStyle().subTitle,
          ),
          actionButtons: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Yes",
                style: AppStyle().normalText,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "No",
                style: AppStyle().normalText,
              ),
            ),
          ],
        ).showPopup(context);
      },
      child: SizedBox(
        width: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.image,
                  width: 80,
                  height: 80,
                ),
                10.pw,
                SizedBox(
                  width: 60.cmpw(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.title, style: AppStyle().normalText),
                          Text(
                            "${widget.price} USD",
                            style: AppStyle().normalText.copyWith(
                                  color: AppColors().secBlue,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (isQty != 1) {
                                setState(() {
                                  isQty -= 1;
                                });
                              }
                            },
                            icon: Icon(Icons.arrow_left),
                          ),
                          Text(isQty.toInt().toString(),
                              style: AppStyle().normalText),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isQty += 1;
                              });
                            },
                            icon: Icon(Icons.arrow_right),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

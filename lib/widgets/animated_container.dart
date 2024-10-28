import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:e_commers_app/widgets/details_text.dart';
import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  final int total;
  final int delivery;
  final int discount;
  final int subTotal;
  final bool isClick;
  const CustomAnimatedContainer({
    super.key,
    required this.total,
    required this.delivery,
    required this.discount,
    required this.subTotal,
    required this.isClick,
  });

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.total} USD",
                  style: AppStyle().appTitle,
                ),
                Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors().mainBlue,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors().mainBlack,
                        blurRadius: 5,
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Check Out",
                      style: AppStyle().normalTextLight,
                    ),
                  ),
                )
              ],
            ),
            widget.isClick
                ? Column(
                    children: [
                      25.ph,
                      DetailsText(
                        textOne: "${widget.delivery} USD",
                        textTwo: ": Delivery Cost",
                      ),
                      DetailsText(
                        textOne: "${widget.discount} USD",
                        textTwo: ": Discount",
                      ),
                      DetailsText(
                        textOne: "${widget.subTotal} USD",
                        textTwo: ": Sub Total",
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

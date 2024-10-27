import 'package:e_commers_app/kWidgets/ratings_bar.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class CyberMondayCard extends StatefulWidget {
  final String image;
  final String title;
  final String? discount;
  final int rate;
  const CyberMondayCard({
    super.key,
    required this.image,
    required this.title,
      this.discount,
    required this.rate,
  });

  @override
  State<CyberMondayCard> createState() => _CyberMondayCardState();
}

class _CyberMondayCardState extends State<CyberMondayCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.image,
              width: 150,
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: AppStyle().normalText,
                      ),
                      Text(
                        "${widget.discount??20}% Off",
                        style: AppStyle().normalText.copyWith(
                              color: AppColors().mainBlue,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CoustomRatingsBar(
                  rateIng: widget.rate,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  child: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/kWidgets/bottom_sheet.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:e_commers_app/widgets/appbar_back_btn.dart';
import 'package:e_commers_app/widgets/cyber_monday_card.dart';
import 'package:e_commers_app/widgets/sheet_body.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const AppbarBackBtn(),
        title: Text(
          "Favorites Items",
          style: AppStyle().subTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // favorite page
            GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 5,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                childAspectRatio: 16 / 16,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    CustomBottomSheet(
                      context: context,
                      height: 100.cmph(context),
                      bgColor: AppColors().mainWhite,
                      child: SheetBody(),
                    ).showSheet();
                  },
                  child: const CyberMondayCard(
                    image: "assets/src/cooker.png",
                    title: "Rice Cooker",
                    rate: 4,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:coustom_flutter_widgets/page_animation.dart';
import 'package:e_commers_app/pages/home_page.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:e_commers_app/widgets/appbar_back_btn.dart';
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
        leading: AppbarBackBtn(),
        title: Text(
          "Favorites Items",
          style: AppStyle().subTitle,
        ),
      ),
      body: Column(
        children: [
          // favorite page
        ],
      ),
    );
  }
}

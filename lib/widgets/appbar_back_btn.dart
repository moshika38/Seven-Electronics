import 'package:coustom_flutter_widgets/page_animation.dart';
import 'package:e_commers_app/pages/home_page.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:flutter/material.dart';

class AppbarBackBtn extends StatelessWidget {
  const AppbarBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 0),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors().ashColor,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              CoustomAnimation.pageAnimation(
                const HomePage(),
                const Offset(-1.0, 0.0),
                Offset.zero,
                Curves.easeInOut,
                500,
              ),
            );
          },
          icon: const Center(
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:e_commers_app/pages/account_page.dart';
import 'package:e_commers_app/pages/cart_page.dart';
import 'package:e_commers_app/pages/favorite_page.dart';
import 'package:e_commers_app/pages/main_page.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List<Widget> pages = [
    const MainPage(),
    const FavoritePage(),
    const CartPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors().mainBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: AppColors().secWhite,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: AppColors().secWhite,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _index = 2;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: AppColors().secWhite,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _index = 3;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: AppColors().secWhite,
                ),
              ),
            ],
          ),
        ),
        body: pages[_index],
      ),
    );
  }
}

import 'package:e_commers_app/utils/style.dart';
import 'package:e_commers_app/widgets/animated_container.dart';
import 'package:e_commers_app/widgets/appbar_back_btn.dart';
import 'package:e_commers_app/widgets/cart_body.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const AppbarBackBtn(),
        title: Text(
          "Item Cart",
          style: AppStyle().subTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: isClick ? 250 : 100,
              child: CustomAnimatedContainer(
                total: 1500,
                delivery: 20,
                discount: 50,
                subTotal: 1430,
                isClick: isClick,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isClick = !isClick;
                });
              },
              icon: Icon(
                isClick ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 35,
              ),
            ),
            // 10.ph,
            Expanded(
              child: SingleChildScrollView(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 16 / 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return const CartBody(
                      image: "assets/src/cooker.png",
                      price: "23",
                      title: "Rice Cooker",
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

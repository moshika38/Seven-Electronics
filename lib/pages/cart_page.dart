import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:e_commers_app/widgets/appbar_back_btn.dart';
import 'package:e_commers_app/widgets/cart_body.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: AppbarBackBtn(),
        title: Text(
          "Item Cart",
          style: AppStyle().subTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // favorite page

            SizedBox(
              width: double.infinity,
              height: 30.cmph(context),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textBar(
                        text: "Total Item :",
                        value: "10",
                      ),
                      textBar(
                        text: "Total Price :",
                        value: "100 USd",
                      ),
                      textBar(
                        text: "Discount :",
                        value: "10 %",
                      ),
                      textBar(
                        text: "Delevary Charge :",
                        value: "10 USD",
                      ),
                      textBar(
                        text: "Sub Total :",
                        value: "100 USD",
                      ),
                      10.ph,
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors().secBlue,
                          borderRadius: BorderRadius.circular(100),
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
                ),
              ),
            ),
            15.ph,
            Expanded(
              child: SingleChildScrollView(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 16 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CartBody(
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

class textBar extends StatelessWidget {
  final String text;
  final String value;
  const textBar({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppStyle().normalText,
          ),
          Text(
            value,
            style: AppStyle().normalText,
          ),
        ],
      ),
    );
  }
}

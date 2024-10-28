import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/pages/cart_page.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:e_commers_app/widgets/appbar_back_btn.dart';
import 'package:e_commers_app/widgets/details_card.dart';
import 'package:e_commers_app/widgets/setting_card.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: AppbarBackBtn(),
        title: Text(
          "Account",
          style: AppStyle().subTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SettingsCard(
              mainText: "Currently Login",
              secText: "moshika38@gmail.com",
              isGoogle: true,
            ),
            DetailsCard(
              mainText: "User Name",
              secText: "Moshika38",
            ),
            DetailsCard(
              mainText: "Address",
              secText: "no 07, wijaya lane, mailagasthanna, badulla, sri lanka",
            ),
            SizedBox(
              width: 90.cmpw(context),
              height: 100,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    20.pw,
                    Text(
                      "Log Out",
                      style: AppStyle().normalText,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

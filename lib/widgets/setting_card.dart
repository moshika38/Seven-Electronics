import 'package:coustom_flutter_widgets/size_extensiton.dart';
import 'package:e_commers_app/utils/colors.dart';
import 'package:e_commers_app/utils/style.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatefulWidget {
  final String mainText;
  final String secText;
  final bool isGoogle;
  const SettingsCard(
      {super.key,
      required this.mainText,
      required this.secText,
      required this.isGoogle});

  @override
  State<SettingsCard> createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.mainText,
                    style: AppStyle().normalText,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isClick = !isClick;
                      });
                    },
                    icon: Icon(
                      isClick ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        5.ph,
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: isClick ? 100 : 0,
          child: isClick
              ? Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors().mainWhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        widget.isGoogle
                            ? Icon(Icons.email)
                            : Icon(Icons.facebook),
                        10.pw,
                        Text(
                          widget.secText,
                          style: AppStyle().normalText,
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}

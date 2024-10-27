import 'package:flutter/material.dart';

class CateCard extends StatelessWidget {
  final String image;
  final String? text;
  const CateCard({super.key, required this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
             
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomBottomSheet {
  final BuildContext context;
  final Widget? child;
  final EdgeInsetsGeometry? pading;
  final Color? bgColor;
  final double? topRadius;
  final double? width;
  final double? height;

  CustomBottomSheet({
    this.bgColor,
    this.topRadius,
    required this.context,
    this.child,
    this.pading,
    this.width,
    this.height,
  });

  void showSheet() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: width ?? double.infinity,
          decoration: BoxDecoration(
            color: bgColor ?? const Color.fromARGB(255, 195, 193, 193),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topRadius ?? 20),
              topRight: Radius.circular(topRadius ?? 20),
            ),
          ),
          height: height ?? 200,
          padding: pading ?? const EdgeInsets.all(15),
          child: child ??
              const SizedBox(
                width: 200,
                height: 200,
                child: Text("Bottom sheet"),
              ),
        );
      },
    );
  }
}


/*
======================================================================

CustomBottomSheet(context: context).showSheet();

======================================================================

*/

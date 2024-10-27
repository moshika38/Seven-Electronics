import 'package:flutter/material.dart';

class CoustomRatingsBar extends StatefulWidget {
  final double? size;
  final int rateIng;
  final Color? colors;
  const CoustomRatingsBar(
      {super.key, this.size, required this.rateIng, this.colors});

  @override
  State<CoustomRatingsBar> createState() => _CoustomRatingsBarState();
}

class _CoustomRatingsBarState extends State<CoustomRatingsBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < widget.rateIng ? Icons.star : Icons.star_border,
          size: widget.size ?? 18,
          color: widget.colors ?? Color.fromARGB(255, 199, 181, 22),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReviewStars extends StatelessWidget {
  final double size;
  final double score;
  const ReviewStars({required this.score, this.size = 24, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(5, (index) {
        bool isSolid = (index + 1) <= score ? true : false;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
              isSolid ? FontAwesomeIcons.solidStar : FontAwesomeIcons.star,
              color: isSolid ? Colors.orange : Colors.grey,
              size: size),
        );
      }),
    );
  }
}

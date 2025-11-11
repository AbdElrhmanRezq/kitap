import 'package:flutter/material.dart';
import 'package:kitap/core/utils/styles.dart';

class Rating extends StatelessWidget {
  final double rating;
  final int count;
  const Rating({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rate_rounded, color: Colors.amber),
        SizedBox(width: 6),
        Text("$rating ", style: Styles.textStyle18),
        SizedBox(width: 3),
        Text(
          "($count)",
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}

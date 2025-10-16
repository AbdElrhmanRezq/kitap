import 'package:flutter/material.dart';
import 'package:kitap/core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rate_rounded, color: Colors.amber),
        SizedBox(width: 6),
        Text("4.8 ", style: Styles.textStyle18),
        SizedBox(width: 3),
        Text("(246)", style: Styles.textStyle16.copyWith(color: Colors.grey)),
      ],
    );
  }
}

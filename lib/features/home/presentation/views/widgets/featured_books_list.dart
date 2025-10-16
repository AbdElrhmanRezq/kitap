import 'package:flutter/material.dart';
import 'package:kitap/core/utils/assets.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_image.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CustomBookImage(),
        ),
      ),
    );
  }
}

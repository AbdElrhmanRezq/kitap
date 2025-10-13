import 'package:flutter/material.dart';
import 'package:kitap/core/utils/assets.dart';

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
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.bookCover),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

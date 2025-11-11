import 'package:flutter/material.dart';
import 'package:kitap/core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({
    super.key,
    this.imageUrl = 'https://www.freepik.com/vectors/default-img',
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}

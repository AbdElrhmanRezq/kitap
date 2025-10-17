import 'package:flutter/material.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_image.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.18,
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

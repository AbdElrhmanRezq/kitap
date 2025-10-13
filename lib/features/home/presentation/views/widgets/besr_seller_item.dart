import 'package:flutter/material.dart';
import 'package:kitap/core/utils/assets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
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
        ],
      ),
    );
  }
}

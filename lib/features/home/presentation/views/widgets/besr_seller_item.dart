import 'package:flutter/material.dart';
import 'package:kitap/consts.dart';
import 'package:kitap/core/utils/assets.dart';
import 'package:kitap/core/utils/styles.dart';
import 'package:kitap/features/home/presentation/views/widgets/rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

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
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.5,
                  child: Text(
                    "The civilization of arabs ----------------- aa",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),

                Text(
                  "Rudyard Kipling",
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 3),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 \$",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Rating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

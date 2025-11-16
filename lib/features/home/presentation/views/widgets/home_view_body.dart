import 'package:flutter/material.dart';
import 'package:kitap/core/utils/styles.dart';
import 'package:kitap/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:kitap/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:kitap/features/home/presentation/views/widgets/featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: height * 0.02),
                FeaturedBooksList(height: height),
                SizedBox(height: height * 0.04),
                Text("Newest Books", style: Styles.textStyle20),
                SizedBox(height: height * 0.01),
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([BestSellerList()])),
        ],
      ),
    );
  }
}

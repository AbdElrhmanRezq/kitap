import 'package:flutter/material.dart';
import 'package:kitap/features/home/presentation/views/widgets/besr_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BestSellerItem(),
      ),
    );
  }
}

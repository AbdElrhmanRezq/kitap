import 'package:flutter/material.dart';
import 'package:kitap/features/home/presentation/views/widgets/besr_seller_item.dart';

class ResultBooks extends StatelessWidget {
  const ResultBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: BestSellerItem(),
        ),
      ),
    );
  }
}

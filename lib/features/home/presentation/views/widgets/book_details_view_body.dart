import 'package:flutter/material.dart';

import 'package:kitap/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            BookDetailsAppBar(),
            SizedBox(height: 20),
            SizedBox(width: width * 0.5, child: CustomBookImage()),
          ],
        ),
      ),
    );
  }
}

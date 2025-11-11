import 'package:flutter/material.dart';
import 'package:kitap/core/utils/styles.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_image.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_options.dart';
import 'package:kitap/features/home/presentation/views/widgets/rating.dart';
import 'package:kitap/features/home/presentation/views/widgets/similar_books_list.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  BookDetailsAppBar(),
                  SizedBox(height: 20),
                  SizedBox(width: width * 0.5, child: CustomBookImage()),
                  const SizedBox(height: 30),
                  Text(
                    'The civilization of arabs',
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Gustaf leobon',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Rating(rating: 4, count: 246),
                  const SizedBox(height: 30),

                  BookOptions(),

                  Expanded(child: SizedBox(height: 50)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You might also like",
                      style: Styles.textStyle18,
                    ),
                  ),
                  SizedBox(height: 20),
                  SimilarBooksList(height: height),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

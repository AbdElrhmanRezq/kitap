import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:kitap/core/utils/functions/launch_url.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';

class BookDetailsAppBar extends StatelessWidget {
  final BookModel book;
  const BookDetailsAppBar({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        IconButton(
          onPressed: () {
            if (book.accessInfo?.pdf?.isAvailable ?? false) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('The API does not provide PDF link :\'('),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('PDF not available for this book')),
              );
            }
          },
          icon: Icon(FontAwesomeIcons.download),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kitap/core/utils/functions/launch_url.dart';
import 'package:kitap/core/widgets/custom_button.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BookOptions extends StatelessWidget {
  final BookModel book;
  const BookOptions({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CustomButton(
            text: "Free",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          CustomButton(
            text: "Preview",
            backgroundColor: Color(0xffEF8262),
            onPressed: () async {
              await launchCustomUrl(context, book.volumeInfo.previewLink);
            },
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}

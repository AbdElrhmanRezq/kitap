import 'package:flutter/material.dart';
import 'package:kitap/features/search/presentation/views/widgets/result_books.dart';
import 'package:kitap/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),

      child: Column(
        children: [SearchTextField(), SizedBox(height: 20), ResultBooks()],
      ),
    );
  }
}

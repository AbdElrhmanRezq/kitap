import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap/core/utils/assets.dart';
import 'package:kitap/core/widgets/custom_error_widget.dart';
import 'package:kitap/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:kitap/features/home/presentation/views/widgets/book_image.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: height * 0.23,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomBookImage(),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

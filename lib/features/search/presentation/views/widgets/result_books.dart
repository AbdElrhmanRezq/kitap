import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap/features/home/presentation/views/widgets/besr_seller_item.dart';
import 'package:kitap/features/search/presentation/manager/search_cubit/search_cubit.dart';

class ResultBooks extends StatelessWidget {
  const ResultBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchSuccess) {
            return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BestSellerItem(book: state.books[index]),
              ),
            );
          } else if (state is SearchInitial) {
            return Center(
              child: Text(
                'Search for books',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            );
          } else if (state is SearchFailure) {
            return Center(child: Text(state.errMessage));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

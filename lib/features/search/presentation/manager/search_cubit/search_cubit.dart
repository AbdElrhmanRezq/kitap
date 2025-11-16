import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';
import 'package:kitap/features/search/data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  SearchCubit(this.searchRepo) : super(SearchInitial());
  Future<void> fetchSearchedBooks(String searchText) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchedBooks(searchText);
    result.fold(
      (failure) => emit(SearchFailure(failure.message)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kitap/core/errors/failures.dart';
import 'package:kitap/core/utils/api_service.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';
import 'package:kitap/features/home/data/repo/home_repo.dart';
import 'package:kitap/features/search/data/repos/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
    String searchText,
  ) async {
    try {
      var data = await apiService.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=$searchText',
      );
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

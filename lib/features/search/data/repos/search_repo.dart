import 'package:dartz/dartz.dart';
import 'package:kitap/core/errors/failures.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
    String searchText,
  );
}

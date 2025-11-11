import 'package:dartz/dartz.dart';
import 'package:kitap/core/errors/failures.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

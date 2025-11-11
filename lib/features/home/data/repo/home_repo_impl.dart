import 'package:dartz/dartz.dart';
import 'package:kitap/core/errors/failures.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';
import 'package:kitap/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}

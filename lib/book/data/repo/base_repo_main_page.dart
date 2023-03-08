import 'package:book/book/data/models/BookModel.dart';
import 'package:book/core/errors/fail.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> FeaturedBooksrepo();
  Future<Either<Failure, List<BookModel>>> BestsellerNewsetBooksrepo();

  Future<Either<Failure, List<BookModel>>> SimilarBook({required String category});
}
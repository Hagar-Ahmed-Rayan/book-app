import 'package:book/book/data/models/BookModel.dart';
import 'package:book/book/data/repo/base_repo_main_page.dart';
import 'package:book/core/errors/fail.dart';
import 'package:book/core/utils/apiconstant.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';

class HomeRepoImpl implements HomeRepo {



  @override
  Future<Either<Failure, List<BookModel>>> FeaturedBooksrepo() async {
    try {
      final response = await Dio().get(ApiConstance.featurebooks);
      List<BookModel> books = [];

      for (var item in response.data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
  @override
  Future<Either<Failure, List<BookModel>>> BestsellerNewsetBooksrepo() async {
    try {
      final response = await Dio().get(ApiConstance.Bestseller);

     // var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> Bestsellerbooks = [];
      for (var item in response.data['items']) {
        try {
          Bestsellerbooks.add(BookModel.fromJson(item));
        } catch (e) {
          Bestsellerbooks.add(BookModel.fromJson(item));
        }
      }

      return Right(Bestsellerbooks);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }


  }

  @override
  Future<Either<Failure, List<BookModel>>> SimilarBook({required String category}) async  {
    try {
      final response = await Dio().get(ApiConstance.SimilarBook);

      // var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> SimilarBook = [];
      for (var item in response.data['items']) {
        try {
          SimilarBook.add(BookModel.fromJson(item));
        } catch (e) {
          SimilarBook.add(BookModel.fromJson(item));
        }
      }

      return Right(SimilarBook);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }

  }
}

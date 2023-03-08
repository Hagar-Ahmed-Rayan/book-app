import 'package:bloc/bloc.dart';
import 'package:book/book/data/repo/base_repo_main_page.dart';
import 'package:book/book/presentation/controller/states/same_books_states.dart';
import 'package:equatable/equatable.dart';



class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.SimilarBook(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
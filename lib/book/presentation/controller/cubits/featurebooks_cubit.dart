import 'package:bloc/bloc.dart';
import 'package:book/book/data/repo/base_repo_main_page.dart';
import 'package:book/book/presentation/controller/states/featurebooks_state.dart';
import 'package:equatable/equatable.dart';


class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.FeaturedBooksrepo();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
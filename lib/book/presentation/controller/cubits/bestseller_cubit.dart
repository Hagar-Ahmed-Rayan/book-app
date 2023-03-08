import 'package:bloc/bloc.dart';
import 'package:book/book/data/repo/base_repo_main_page.dart';
import 'package:book/book/presentation/controller/states/bestseller_state.dart';
import 'package:equatable/equatable.dart';



class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.BestsellerNewsetBooksrepo();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
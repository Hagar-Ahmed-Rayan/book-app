

import 'package:book/book/presentation/components/book_list_view_item.dart';
import 'package:book/book/presentation/controller/cubits/featurebooks_cubit.dart';
import 'package:book/book/presentation/controller/states/featurebooks_state.dart';
import 'package:book/book/presentation/screens/book_detalis.dart';
import 'package:book/core/widget/error.dart';
import 'package:book/core/widget/load.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context,state) {
    if (state is FeaturedBooksSuccess) {
      return Container(
        height: MediaQuery
            .of(context)
            .size
            .height * .3,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (
                          context) => const BookDetailsViewBody()),
                    );
                  },
                  child: BookImageIitem(imageUrl:  state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      '',),
                ),
              );
            }),
      );
    }
    else if (state is FeaturedBooksFailure) {
      return CustomErrorWidget(errMessage: state.errMessage);
    } else {
      return const CustomLoadingIndicator();
    }
      }
    );




  }
}

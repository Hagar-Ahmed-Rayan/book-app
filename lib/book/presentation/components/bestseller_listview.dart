

import 'package:book/book/presentation/components/bestseller_item.dart';
import 'package:book/book/presentation/controller/cubits/bestseller_cubit.dart';
import 'package:book/book/presentation/controller/cubits/featurebooks_cubit.dart';
import 'package:book/book/presentation/controller/states/bestseller_state.dart';
import 'package:book/book/presentation/controller/states/featurebooks_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context,state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(   bookModel: state.books[index],),
              );
            },
          );
        }

        else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else {
          return const CustomLoadingIndicator();
        }
      }
    );
  }
}

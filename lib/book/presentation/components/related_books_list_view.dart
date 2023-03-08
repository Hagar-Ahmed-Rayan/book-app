import 'package:book/book/presentation/components/bestseller_item.dart';
import 'package:book/book/presentation/components/book_list_view_item.dart';

import 'package:flutter/material.dart';


class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context).size.height * .15,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: BookImageIitem(
                imageUrl: "assets/images/book1.png",


              ),
            );
          }),
    );
  }
}
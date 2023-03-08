

import 'package:book/book/presentation/components/book_list_view_item.dart';
import 'package:book/book/presentation/components/bookaction.dart';
import 'package:book/book/presentation/components/bookrate.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
const BookDetailsSection({super.key});


@override
Widget build(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  return Column(
    children: [
  Padding(padding: EdgeInsets.symmetric(horizontal: width * .2,),
  child: BookImageIitem(imageUrl: 'assets/images/book1.png',),),
  const SizedBox(
  height: 43,
  ),
  Text('The J ungle Book',style :TextStyle(
  fontWeight: FontWeight.bold,
  ),
  textAlign: TextAlign.center,
  ),
  const SizedBox(
  height: 6,
  ),
  Opacity(opacity: .7,
  child: Text(
  'Allan serjk',
  style: TextStyle(
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w500,),),),
  const SizedBox(
  height: 18,
  ),
      Bookrate(
  rating: 4.8,
  count: 3,
  ),
  const SizedBox(
  height: 37,
  ),
  BooksAction(),
    ],
  );
}
}
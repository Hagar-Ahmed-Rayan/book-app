

import 'package:book/book/data/models/BookModel.dart';
import 'package:book/book/presentation/components/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {

 // const BookListViewItem({Key? key}) : super(key: key);
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            children: [
              BookImageIitem(imageUrl: 'assets/images/book1.png',),
             /* Image(
                image: const AssetImage(
                  "assets/images/book1.png",

                ),
                fit: BoxFit.fill,
              ),*/
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Container(
        width: MediaQuery.of(context).size.width * .5,
    child: Text(
    "Harry Potter and the Goblet of Fire",
    maxLines: 2,
    overflow: TextOverflow.ellipsis,

    ),
    ),
        const SizedBox(
          height: 3,
        ),
        Text(
          'J.K. Rowling'

        ),
        const SizedBox(
          height: 3,
        ),
    Row(
    children: [
    Text(
    '19.99 €',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    ),


    const Spacer(),

    Icon(Icons.star),
    Text(

    '4.8',
    )
],
    ),

    ]
                ),
              ),

     ],
    ),
      ));
  }
}

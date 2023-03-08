

import 'package:book/book/presentation/components/app_bar.dart';
import 'package:book/book/presentation/components/bestseller_listview.dart';
import 'package:book/book/presentation/components/books_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget  build(BuildContext context) {
    return  Scaffold(
      body:  CustomScrollView(
        slivers: [
        SliverToBoxAdapter(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
          Appbar(),
    BooksListView(),
    SizedBox(height: 30,),

    Padding(padding: EdgeInsets.symmetric(horizontal: 30),
    child: Text(
    'Newset Books',


    ),
    ),
    SizedBox(height: 20,),
          ]),
        ),
          SliverFillRemaining(
            child: BestSellerListView(),
          ),

        ],
      )
    );
  }
}

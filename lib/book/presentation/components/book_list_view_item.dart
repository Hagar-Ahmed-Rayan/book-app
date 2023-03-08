
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookImageIitem  extends StatelessWidget {
  const BookImageIitem ({Key? key,required this.imageUrl}) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Image(
          image:  AssetImage(
              imageUrl,
            //"assets/images/book1.png",

          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

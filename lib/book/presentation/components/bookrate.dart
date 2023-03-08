


import 'package:flutter/material.dart';

class Bookrate extends StatelessWidget {
  const Bookrate({Key? key, required this.rating, required this.count}) : super(key: key,);
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
            ' ($rating)'

        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            ' ($count)',
            style:TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}

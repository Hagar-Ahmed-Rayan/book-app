
import 'package:book/core/utils/repeted-button.dart';
import 'package:flutter/material.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
           Expanded(
              child: CustomButton(
                text: 'Free',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              )),
          Expanded(
              child: CustomButton(
                onPressed: () {
                },
                fontSize: 16,
                text: '19.9',
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              )),
        ],
      ),
    );
  }

}
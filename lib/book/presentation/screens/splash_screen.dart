

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        backgroundColor: Color(0xff100B20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Image(
      image: const AssetImage(
      "assets/images/mainlogo.png",

      ),),
         // Image.asset('mainlogo.png'),
          const SizedBox(
            height: 4,
          ),
          Text('READ FREE BOOK',
            textAlign: TextAlign.center,

          ),
        ],
      )
    );

  }
}

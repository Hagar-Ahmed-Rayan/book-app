

import 'package:flutter/material.dart';

class Appbar  extends StatelessWidget {
  const Appbar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Image(
    image: const AssetImage(
    "assets/images/mainlogo.png",
            
    ),height: 30,
    
    ),
        const Spacer(),
    IconButton(
    onPressed: () {
    }, icon: Icon(Icons.search),
      iconSize: 20,
    )
      ],
    );
  }
}

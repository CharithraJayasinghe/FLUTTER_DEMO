import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
        ),

        body:  Center(
          child: 
            
            tab1()
        )
    );
  }
}

@override
Widget tab1() {
  return Container(
    child: Center(
      child: Image.asset("assets/logo.jpg")
      ),
  );

}

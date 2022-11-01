import 'package:flutter/material.dart';
import 'package:my_portfolio/utill/common.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: mediaHeight(context, 1),
        child: Center(
          child: Column(
            children: [
              Text('이미지'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('ME'),
                  Text('WORKS')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

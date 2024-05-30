import 'package:conselec/views/SecondPage.dart';
import 'package:conselec/views/mainPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SecondPage()),
      );
    });
    return Scaffold
    (
        body: Center
        (
          child: Container
          (
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Image(
            height: 150,width: 150,
            image: AssetImage("lib/assets/images/Conselec.png"),
            ) ,
          )
        ),
    );
  }
}
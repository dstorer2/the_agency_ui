import 'dart:async';
import 'package:flutter/material.dart';
import 'package:the_agency_ui/pages/my_home_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyHomePage()));
    });

    return Scaffold(
      body: Text('hello'),
    );
  }
}

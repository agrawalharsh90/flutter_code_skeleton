import 'dart:async';

import 'package:code_skeleton/presentation/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const String routeNamed = "SplashPage";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      timerFunction();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  timerFunction() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, HomePage.routeNamed);
    });
  }
}

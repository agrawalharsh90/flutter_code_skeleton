import 'package:code_skeleton/presentation/home_page.dart';
import 'package:code_skeleton/presentation/splash_page.dart';
import 'package:code_skeleton/utils/string_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  double defaultHeight = 812;
  double defaultWidth = 375;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(defaultWidth, defaultHeight),
      allowFontScaling: false,
      child: MaterialApp(
        title: StringValue.APP_TITLE,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: SplashPage.routeNamed,
        routes: {
          SplashPage.routeNamed: (BuildContext context) => SplashPage(),
          HomePage.routeNamed: (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}

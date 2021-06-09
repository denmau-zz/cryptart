import 'package:flutter/material.dart';

import 'constants.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cryptart',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kLightBg,
      ),
      home: MainScreen(),
    );
  }
}

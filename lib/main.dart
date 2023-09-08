import 'package:flutter/material.dart';
import 'package:flutter_test_application/login_page.dart';
import 'package:flutter_test_application/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      theme: ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: LoginPage(),
    );
  }

}
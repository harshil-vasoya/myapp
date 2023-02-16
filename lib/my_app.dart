import 'package:flutter/material.dart';
import 'package:matrimony/api/api_demo.dart';
import 'package:matrimony/database.dart';
import 'package:matrimony/food_delivery_page1.dart';
import 'package:matrimony/food_delivery_page2.dart';
import 'package:matrimony/foodsi.dart';
import 'package:matrimony/matrimony/add_user.dart';
import 'package:matrimony/my_home_page.dart';
import 'package:matrimony/pre_login_page.dart';
import 'package:matrimony/simple_interest_calculator.dart';
import 'package:matrimony/user_list_page.dart';
import 'food_delivery_page3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyDatabase().copyPasteAssetFileToRoot().then((value) {});
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodDeliveyPage3(),
    );
  }
}

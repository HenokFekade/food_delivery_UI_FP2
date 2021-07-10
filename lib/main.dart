import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Poppins",
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kWhiteColor,
          textTheme: TextTheme(
            headline5: TextStyle(fontWeight: FontWeight.bold),
            headline6: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
          )),
      home: HomeScreen(),
    );
  }
}

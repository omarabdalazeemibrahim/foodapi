import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:omer/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          textTheme: TextTheme(
            bodyText2:  TextStyle(
              color: Colors.white
            )
          )
      ),
      home: HomePage(),
    );
  }
}





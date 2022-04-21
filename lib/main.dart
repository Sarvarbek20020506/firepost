import 'package:firepost/pages/Sign_In.dart';
import 'package:firepost/pages/home_page.dart';
import 'package:firepost/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
      routes: {
        HomePage.id : (context) =>HomePage(),
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage(),
      },
    );
  }
}


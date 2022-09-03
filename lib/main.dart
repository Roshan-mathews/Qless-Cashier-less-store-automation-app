import 'package:flutter/material.dart';

import 'Home page/home_page.dart';
import 'Login Page/Screens/Welcome/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QLess',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
   // return SignIn();
    return WelcomeScreen();
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_firstapp/pages/login.dart';
import 'package:flutter_firstapp/pages/signup.dart';
import 'package:flutter_firstapp/pages/welcome.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const Welcome(),
        '/login': (context) => const Login(),


    // When navigating to the "/second" route, build the SecondScreen widget.
    '/signup': (context) => const Signup(),
  }
    );
  }
}
import 'package:flutter/material.dart';
import 'package:muk_connect/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muk Connect',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        highlightColor: Colors.white,
      ),
      home: Login(),
    );
  }
}

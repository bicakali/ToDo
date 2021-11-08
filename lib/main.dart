import 'package:flutter/material.dart';
import 'screens/_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xFFECEBD9),
      title: 'Flutter Demo',
      home: Splash(),
    );
  }
}


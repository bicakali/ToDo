import 'package:flutter/material.dart';
import 'screens/auths.dart';
import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xFFDEDCC5),
      title: 'Flutter Demo',
      home: Splash(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => Splash(),
        '/auth': (BuildContext context) => Auth(),
        '/logIn': (BuildContext context) => LogIn(),
      },
    );
  }
}

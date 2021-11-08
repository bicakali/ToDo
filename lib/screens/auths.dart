import 'package:flutter/material.dart';
class Auth extends StatefulWidget {
  const Auth({ Key? key }) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  late var size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          const Text('Notilife', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.2 ,),
        ],
      ),),
    );
  }
}

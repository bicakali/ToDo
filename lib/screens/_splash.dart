import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    late var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFECEBD9),
      body: Center(
        child: Image.asset('assets/notilogo.png'),
        
      ),
    );
  }
}
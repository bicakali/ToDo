import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Color(0xFFECEBD9),
      body: Center(
        child: Image(image: AssetImage('assets/notilogo.png')),
        
      ),
    );
  }
}
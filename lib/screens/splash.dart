import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../variables.dart';
import 'auths.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Auth());
    return Scaffold(
      backgroundColor: const Color(0xFFECEBD9),
      body: Center(
        child: SvgPicture.asset(svgName),
      ),
    );
  }
}
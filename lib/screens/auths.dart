import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

import '../variables.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  late var size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E6D7),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // LOGO
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SvgPicture.asset(svgName),
          ),

          // FORMLAR
          formInput(TextInputType.emailAddress, FlatIcons.user, 'Email'),
          formInput(
              TextInputType.visiblePassword, FlatIcons.locked_5, 'Password'),

          // Sifremi unuttum
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: TextButton(
                  child: const Text(
                    'Şifreyi Unuttum',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),

          // Giris Yap
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFFF29B39)),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 12)),
                fixedSize:
                    MaterialStateProperty.all(Size.fromWidth(size.width)),
              ),
              onPressed: () {},
              child: const Text('Giriş Yap', style: TextStyle(fontSize: 20)),
            ),
          ),

          // Kayita Yönlendirme
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Bir Hesabın Yok mu?',
                    style: TextStyle(
                        color: Colors.black26, fontWeight: FontWeight.bold)),
                TextButton(
                  child: const Text('Giriş Yap',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  onPressed: () {Navigator.pushNamed(context, '/logIn');},
                ),
              ],
            ),
          ),

          // Dividerr
          Row(
            children: const [
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Ya Da',
                    style: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
            ],
          ),

          // Other Accounts
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              otherAccount(context, const Icon(Icons.facebook), 'Facebook'),
              otherAccount(context, Image.asset('assets/google.png'), 'Google'),
            ],
          ),
        ],
      ),
    );
  }

  // Input
  Padding formInput(
      TextInputType keyboardType, IconData icon, String labelText) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(icon),
            hintText: labelText,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }

  // Other Account Buttons
  Widget otherAccount(BuildContext context, Widget ikon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: ikon,
        label: Text(
          label,
          style: TextStyle(
              color: label == 'Facebook' ? Colors.white : Colors.black),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 5)),
          backgroundColor: MaterialStateProperty.all(
              label == 'Facebook' ? Colors.blue : Colors.white),
          elevation: MaterialStateProperty.all(20),
          fixedSize:
              MaterialStateProperty.all(Size.fromWidth(size.width / 2.5)),
        ),
      ),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  late var size = MediaQuery.of(context).size;

  bool i = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Scaffold(
        backgroundColor: const Color(0xFFE8E6D7),
        appBar: AppBar(
          backgroundColor: Color(0xFFE8E6D7),
          elevation: 0,
          centerTitle: true,
          leading: const Icon(
            CupertinoIcons.back,
            color: Colors.black26,
          ),
          title: const Text('Email bilgileri ile kayıt',
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              // FORM

              // Name
              inputName('İsim ve Soyisim'),
              FormInput(TextInputType.name, 'Örn. Ali Çavdar'),

              // Email
              inputName('Email Adresi'),
              FormInput(TextInputType.emailAddress, 'Email Adresinizi Yazınız'),

              // Password
              inputName('Şifre'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Güçlü Şifreler Kullanın',
                      suffixIcon: IconButton(
                          onPressed: () => setState(() => i = !i),
                          icon: Icon(i
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined)),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(7)))),
                ),
              ),

              // CheckBox
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    fillColor: MaterialStateProperty.all(Color(0xFFF29B39)),
                    checkColor: Colors.white,
                  ),
                  Text('Hizmet Şartları',
                      style: TextStyle(color: Color(0xFFF29B39))),
                  Text(' nı Kabul Ediyorum.')
                ],
              ),

              // Kayıt Ol
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFF29B39)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12)),
                    fixedSize:
                        MaterialStateProperty.all(Size.fromWidth(size.width)),
                  ),
                  onPressed: () {},
                  child: Text('Kayıt Ol', style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // inputName Method
  Padding inputName(String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  // Input
  Padding FormInput(TextInputType keyboardType, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: labelText,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(7)))),
      ),
    );
  }
}

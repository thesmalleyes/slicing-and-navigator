import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/button_login.dart';
import 'package:movieapp/form_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 19, 9, 36),
      body: Column(
        children: [
          Center(
            child: Container(
              margin:
                  const EdgeInsets.all(16) + const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/nonton_id.png',
                width: size.width * .6,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Masuk',
            style: GoogleFonts.openSans(
              color: Color(0XFFFFFFFF),
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          FormLogin(
            formKey: _formKey,
            usernameController: usernameController,
            passwordController: passwordController,
          ),
          Spacer(),
          ButtonLogin(
            size: size,
            usernameController: usernameController,
            passwordController: passwordController,
          )
        ],
      ),
    );
  }
}

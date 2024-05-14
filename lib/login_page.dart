import 'package:flutter/material.dart';
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
  late bool isPaswwordInvisible;
  bool isAgree = false;

  @override
  void initState() {
    isPaswwordInvisible = true;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    usernameController.clear();
    super.dispose();
  }

  changeVisibility() {
    setState(() {
      isPaswwordInvisible = !isPaswwordInvisible;
    });
  }

  changeAgreement() {
    setState(() {
      isAgree = !isAgree;
    });
  }

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
              color: const Color(0XFFFFFFFF),
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
            isPasswordInvisible: isPaswwordInvisible,
            changePasswordVisibility: changeVisibility,
          ),
          Row(
            children: [
              Checkbox(
                value: isAgree,
                onChanged: (value) {
                  changeAgreement();
                },
              ),
              const Text(
                'Saya setuju dengan Term and Conditions',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const Spacer(),
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

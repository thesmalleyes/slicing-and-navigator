import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movieapp/home_page.dart';

class ButtonLogin extends StatelessWidget {
  final Size size;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  const ButtonLogin(
      {super.key,
      required this.size,
      required this.usernameController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: size.width,
      child: ElevatedButton(
        onPressed: () {
          if (usernameController.text == 'Admin' &&
              passwordController.text == '123') {
            //Pindah ke halamaan Home

            /*Navigator Push
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => HomePage(
                        id: '1234',
                      )),
            );
            */

            /*Router
            Navigator.pushNamed(context, '/home', arguments: '1234');
            */

            //GoRouter
            //Go berarti menimpa halaman sebelumnya
            // context.go('/home/123456');

            context.push('/home/123567');
            print("Login success");
          } else {
            print("Username atau password anda salah");
          }
          //Pindah ke halaman Homepage
          //if(username and password did not match, maka muncul pesan error)
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => TestScreen(text: ,)),
          // );
          // context.go('/test-pop');
          // context.push('/test/123');
        },
        style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF867AD2)),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

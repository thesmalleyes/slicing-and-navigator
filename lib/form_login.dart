import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormLogin extends StatelessWidget {
  final GlobalKey formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  const FormLogin(
      {super.key,
      required this.formKey,
      required this.usernameController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Tolong isi username anda';
                }
                return null;
              },
              controller: usernameController,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset('assets/icons/prefix_username.svg',
                      width: 24, height: 24, semanticsLabel: 'Icon Username'),
                ),
                fillColor: Color(0XFF2F2C44),
                filled: true,
                hintText: 'Masukkan Username',
                label: const Text('Username'),
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: passwordController,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset('assets/icons/prefix_password.svg',
                      width: 24, height: 24, semanticsLabel: 'Icon Password'),
                ),
                fillColor: Color(0XFF2F2C44),
                filled: true,
                hintText: 'Masukkan Password Anda',
                label: const Text('Password'),
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

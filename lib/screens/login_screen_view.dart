import 'package:app/screens/login_form.dart';
import 'package:app/widgets/tittle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash-fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Tittle(),
            LoginForm(),
            Container(
              key: const Key('terms'),
              margin: const EdgeInsets.only(top: 130),
              child: TextButton(
                onPressed: () => {
                  Get.toNamed('/TermsOfService'),
                },
                child: const Text(
                  'Termos e condições',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Exo',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

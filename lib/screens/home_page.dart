import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String type = Get.find<Info>().type;

  @override
  Widget build(BuildContext context) {
    final String text;
    if (type == 'CPF') {
      text = 'Pessoa Física';
    } else {
      text = 'Pessoa Jurídica';
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Seja bem-vindo $text!',
                style: const TextStyle(
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/');
              },
              child: const Text(
                'Sair',
                style: TextStyle(
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

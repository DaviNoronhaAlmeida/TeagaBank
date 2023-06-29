import 'package:app/widgets/navigate_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConclusionPassword extends StatelessWidget {
  const ConclusionPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 105),
              width: 240,
              child: Column(
                children: const [
                  Text(
                    'Senha alterada',
                    style: TextStyle(
                      color: Color.fromRGBO(15, 6, 120, 1),
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    'com sucesso',
                    style: TextStyle(
                      color: Color.fromRGBO(15, 6, 120, 1),
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60.91),
              width: 271,
              height: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/conclusion_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.69),
              child: const Text(
                'Faça o login com sua nova senha',
                style: TextStyle(
                  color: Color.fromRGBO(2, 2, 2, 1),
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 37),
              child: const Text(
                'email@gmail.com',
                style: TextStyle(
                  color: Color.fromRGBO(2, 2, 2, 1),
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: const Text(
                'senha123456',
                style: TextStyle(
                  color: Color.fromRGBO(2, 2, 2, 1),
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            NavigateButton(
              text: 'Fazer login',
              marginCustom: 115,
              func: () => {
                Get.toNamed('/'),
              },
            ),
          ],
        ),
      ),
    );
  }
}

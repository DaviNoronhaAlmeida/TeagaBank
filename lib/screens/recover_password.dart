import 'package:app/widgets/appbar.dart';
import 'package:app/widgets/navigate_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar('Recuperar senha'),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.only(top: 26.5),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Color.fromRGBO(19, 19, 18, 1),
                    fontFamily: 'Exo',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Para recuperar sua senha, digite o '),
                    TextSpan(
                      text: 'e-mail cadastrado',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: const TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 5),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(19, 19, 18, 1),
                  fontSize: 14,
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            NavigateButton(
              text: 'Próximo',
              marginCustom: 265,
              func: () => {
                Get.toNamed('/NewPassword'),
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:app/widgets/appbar.dart';
import 'package:app/widgets/list_item.dart';
import 'package:app/widgets/navigate_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_snackbar.dart';

// ignore: must_be_immutable
class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  final TextEditingController _passwdController = TextEditingController();
  final RxBool _obscureText = true.obs;

  void _togglePasswordVisibility() {
    _obscureText.value = !_obscureText.value;
  }

  @override
  Widget build(BuildContext context) {
    bool valid;
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
                    TextSpan(text: 'Informe sua '),
                    TextSpan(
                      text: 'nova senha',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    key: const Key('newPasswordInput'),
                    controller: _passwdController,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      hintText: 'Nova senha',
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      suffixIcon: Container(
                        width: 21,
                        height: 12,
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: GestureDetector(
                          onTap: () => {
                            _togglePasswordVisibility(),
                          },
                          child: const Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(19, 19, 18, 1),
                          ),
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color.fromRGBO(19, 19, 18, 1),
                      fontSize: 14,
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w400,
                    ),
                    obscureText: _obscureText.value,
                  ),
                );
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.only(top: 15, bottom: 2),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Algumas regrinhas para a sua senha:",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            Column(
              children: const <Widget>[
                ListItem(
                  text: '8 Caracteres ou mais',
                ),
                ListItem(
                  text: 'Letra minúscula',
                ),
                ListItem(
                  text: 'Letra maiúscula',
                ),
                ListItem(
                  text: 'Pelo menos um número',
                ),
              ],
            ),
            NavigateButton(
              text: 'Alterar senha',
              marginCustom: 162,
              func: () => {
                valid =
                    RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
                        .hasMatch(_passwdController.text),
                if (!valid)
                  {
                    CustomSnackBar.show(
                        'Verifique as regras para sua senha e tente novamente'),
                  }
                else
                  {
                    Get.toNamed('/ConclusionPassword'),
                  },
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../info.dart';
import '../widgets/show_dialog.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  TextEditingController inputController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Info>(
      init: Info('CPF'),
      builder: (_) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 58),
                  child: TextButton(
                    onPressed: () => {_.change("CPF")},
                    child: const Text(
                      'Pessoa Física',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                        fontFamily: 'Exo',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 34),
                  child: TextButton(
                    onPressed: () => {_.change("CNPJ")},
                    child: const Text(
                      'Pessoa Jurídica',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                        fontFamily: 'Exo',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10, left: 70),
                  height: 3,
                  width: 86,
                  decoration: BoxDecoration(color: _.color1),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, left: 70),
                  height: 3,
                  width: 86,
                  decoration: BoxDecoration(color: _.color2),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 279,
              height: 39,
              child: TextField(
                controller: inputController,
                textAlignVertical: TextAlignVertical.center,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(11),
                ],
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  hintText: 'Digite seu ${_.type}',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 14,
                    fontFamily: 'Exo',
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromRGBO(252, 162, 27, 1),
                  ),
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                  fontSize: 14,
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 279,
              height: 39,
              child: TextField(
                controller: passwdController,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Informe sua senha',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 14,
                    fontFamily: 'Exo',
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(252, 162, 27, 1),
                  ),
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                  fontSize: 14,
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: TextButton(
                onPressed: () => {
                  Get.toNamed('/RecoverPassword'),
                },
                child: const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 14,
                    fontFamily: 'Exo',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11),
              width: 195,
              height: 39,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 24, 206, 197),
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                onPressed: () => {
                  if (inputController.text.length < 11 ||
                      passwdController.text.isEmpty)
                    {
                      showCustomDialog(
                          context, "Entrar", "Informe CPF/CNPJ e senha!"),
                    }
                  else
                    {
                      Get.toNamed('/HomePage'),
                    }
                },
                child: const Center(
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Color.fromRGBO(15, 6, 120, 0.97),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Exo',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: TextButton(
                onPressed: () => {
                  if (_.type == "CPF")
                    {
                      showCustomDialog(
                          context, "Cadastro", "Cadastro de uma pessoa física!")
                    }
                  else
                    {
                      showCustomDialog(context, "Cadastro",
                          "Cadastro de uma pessoa jurídica!")
                    },
                },
                child: const Text(
                  'Criar uma nova conta',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18,
                    fontFamily: 'Exo',
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

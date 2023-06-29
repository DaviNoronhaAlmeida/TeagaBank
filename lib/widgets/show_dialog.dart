import 'package:flutter/material.dart';
import 'package:get/get.dart';

showCustomDialog(BuildContext context, String title, String text) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(text),
      actions: <Widget>[
        TextButton(
          child: const Text('Fechar'),
          onPressed: () {
            Get.back();
          },
        )
      ],
    ),
  );
}

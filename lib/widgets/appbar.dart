import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String tittle;

  const CustomAppBar(this.tittle, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(59.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      leading: InkWell(
        key: const Key('arrowBtn'),
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Color.fromARGB(156, 19, 19, 18),
          size: 25,
        ),
      ),
      title: Text(
        tittle,
        style: const TextStyle(
          color: Color.fromRGBO(19, 19, 18, 1),
          fontFamily: 'Exo',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}

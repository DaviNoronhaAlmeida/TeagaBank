import 'package:flutter/material.dart';

class Tittle extends StatelessWidget {
  const Tittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 100, bottom: 63),
        width: 225,
        height: 71,
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          bottom: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        )),
        child: Row(
          children: const [
            Text(
              'TEAGÁ',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Fahkwang',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'BANK',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Fahkwang',
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

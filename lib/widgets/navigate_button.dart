import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {
  final String text;
  final double marginCustom;
  final VoidCallback func;
  const NavigateButton(
      {super.key,
      required this.text,
      required this.marginCustom,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginCustom),
      width: 195,
      height: 39,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromRGBO(15, 6, 120, 1),
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: func,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.97),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'Exo',
            ),
          ),
        ),
      ),
    );
  }
}

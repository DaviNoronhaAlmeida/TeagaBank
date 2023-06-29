import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String text;

  const ListItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: const Icon(
              Icons.fiber_manual_record,
              color: Color.fromRGBO(3, 3, 3, 1),
              size: 6,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

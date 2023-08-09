import 'package:flutter/material.dart';

class CategoriePopularMovie extends StatelessWidget {
  const CategoriePopularMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, right: 4, left: 4),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffDBE3FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        "Horor",
        style: TextStyle(color: Color(0xff88A4E8), fontSize: 8),
      ),
    );
  }
}

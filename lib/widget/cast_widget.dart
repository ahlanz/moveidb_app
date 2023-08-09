import 'package:flutter/material.dart';
import 'package:moviedb_app/theme.dart';

class CastWidget extends StatelessWidget {
  const CastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 3),
      width: 80,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/spiderman.png',
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Tom Holland',
            style: primaryTextColorStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

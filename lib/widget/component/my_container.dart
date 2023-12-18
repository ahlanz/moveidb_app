import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? color;
  const MyContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      width: double.infinity,
      height: 300,
    );
  }
}

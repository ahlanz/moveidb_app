import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? color;
  final double? height;
  const MyContainer({
    super.key,
    required this.color,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      width: double.infinity,
      height: height,
    );
  }
}

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  const MyButton({
    super.key,
    required this.color,
    required this.child,
    required this.width,
    required this.height,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}

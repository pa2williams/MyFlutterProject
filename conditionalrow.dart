import 'package:flutter/material.dart';

class ConditionalRow extends StatelessWidget {
  final bool condition;
  final Widget child;

  const ConditionalRow({
    Key? key,
    required this.condition,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!condition) return const SizedBox.shrink(); // 👈 nothing if false
    return child;
  }
}
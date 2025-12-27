import 'package:flutter/material.dart';



class FlexColumn extends StatelessWidget {
  final int flex;
  final Widget child;

  const FlexColumn({required this.flex, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex, child: child);
  }
}


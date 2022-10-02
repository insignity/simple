import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE0E6ED),
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

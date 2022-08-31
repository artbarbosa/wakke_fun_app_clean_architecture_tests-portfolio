import 'package:flutter/material.dart';

class CustomDividerComponent extends StatelessWidget {
  final double height;
  const CustomDividerComponent({super.key, this.height = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

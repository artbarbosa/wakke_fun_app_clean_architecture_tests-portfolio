import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Widget child;

  const CustomCardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: child,
        ));
  }
}
